package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.persistence.LineItemManagerMapper;
import org.csu.mypetstore.service.OrderManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

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
}
