package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.persistence.LineItemManagerMapper;
import org.csu.mypetstore.service.OrderManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/orderManager")
public class OrderManagerController
{
    @Autowired
    private OrderManagerService orderManagerService;

    @Autowired
    private LineItemManagerMapper lineItemManagerMapper;

    @GetMapping("/view")
    public String viewOrders(Model model)
    {
        List<Order> orderList = orderManagerService.getAllOrders();
        model.addAttribute("orderList", orderList);

        return "/manager/orderManager";
    }

    @PostMapping("/changed")
    public String changedOrders(@RequestParam(value="arrays") int[] arrays)
    {
//        for (int i = 0; i < arrays.length; i++)
//            System.out.println("-------------------"+ arrays[i] + "------------------");
        for (int i = 0; i < arrays.length; i++)
        {
            Order order = orderManagerService.getOrder(arrays[i]);
            orderManagerService.removeAOrder(order);
        }

        return "/manager/orderManager";
    }

    @PostMapping("/edit")
    public String editOrders(Model model,
                             int orderId,
                             String shipAddress1,
                             String shipAddress2,
                             String shipCity,
                             String shipZip,
                             String courier)
    {
//        System.out.println(orderId);
        //改order
        Order order = orderManagerService.getOrder(orderId);
        order.setShipAddress1(shipAddress1);
        order.setShipAddress2(shipAddress2);
        order.setShipCity(shipCity);
        order.setShipZip(shipZip);
        order.setCourier(courier);

        orderManagerService.updateOrder(order);

        List<Order> orderList = orderManagerService.getAllOrders();
        model.addAttribute("orderList", orderList);

        return "/manager/orderManager";
    }

    @PostMapping("/changeStatus")
    public String changeStatus(@RequestParam(value="changedOrderId") int changedOrderId)
    {
        System.out.println("changeStatus" + changedOrderId);
        Order order = orderManagerService.getOrder(changedOrderId);
        orderManagerService.updateOrderLineStatue_ToR(order);
        return "/manager/orderManager";
    }
}
