package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/Order")
@SessionAttributes(value = {"account", "cart"})
public class OrderController
{

    @Autowired
    OrderService orderService;

    Order orderBridge;

    @GetMapping("/insertOrder")
    public String insertOrder(Model model)
    {
        Cart cart = (Cart) model.getAttribute("cart");
        Account account = (Account) model.getAttribute("account");

        Order order = new Order();
        order.initOrder(account, cart);

        model.addAttribute("order", order);

        model.addAttribute("order", order);
        orderBridge = order;

        model.addAttribute("tempOrder", new Order());
        return "/order/NewOrderForm";
    }

    @GetMapping("/viewOrder")
    public String viewOrder(Model model)
    {
        orderService.insertOrder(orderBridge);

        Account account = (Account) model.getAttribute("account");

        model.addAttribute("order", orderBridge);
        return "order/ViewOrder";
    }

    @PostMapping("/conFirmOrderForm")
    public String conFirmOrderForm(@ModelAttribute(value = "tempOrder") Order tempOrder, Model model)
    {
        Order order = orderBridge;
        order.updateBill(tempOrder);
        order.copyBillToShip(order);

        model.addAttribute("order", order);
        orderBridge = order;
        if (tempOrder.isShippingAddressRequired())
        {
            model.addAttribute("tempChangeShipOrder", new Order());
            return "order/ShippingForm";
        }
        else
        {
            return "order/ConfirmOrder";
        }
    }

    @PostMapping("/shippingAddress")
    public String shippingAddress(@ModelAttribute(value = "tempChangeShipOrder") Order tempChangeShipOrder, Model model)
    {
        Order order = orderBridge;
        order.updateShip(tempChangeShipOrder);

        model.addAttribute("order", order);
        orderBridge = order;

        return "order/ConfirmOrder";
    }
}