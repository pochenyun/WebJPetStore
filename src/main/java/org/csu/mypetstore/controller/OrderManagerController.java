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

    @GetMapping("/edit")
    public String editOrders(Model model, String orderId)
    {
        System.out.println(orderId);

        List<Order> orderList = orderManagerService.getAllOrders();
        model.addAttribute("orderList", orderList);

        return "/manager/orderManager";
    }
}
