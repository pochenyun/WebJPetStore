package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/AccountManager")
public class AccountManagerController
{

    @Autowired
    private AccountManagerService accountManagerService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CatalogService catalogService;

    @Autowired
    private OrderService orderService;

    @GetMapping("/viewAccountManager")
    public String viewAccountManager(Model model)
    {
        List<Account> accountList = accountManagerService.getAccountList();
        model.addAttribute("accountList", accountList);
        return "/manager/AccountManager";
    }

    @GetMapping("/removeAccount")
    public String removeAccount(String username, Model model)
    {
        accountManagerService.removeAccountByUsername(username);
        return viewAccountManager(model);
    }

    @GetMapping("/viewAccountInfo")
    public String viewAccountInfo(String username, Model model)
    {
        Account account = accountService.getAccount(username);
        model.addAttribute("account", account);
        return "/manager/ViewAccountInfo";
    }

    @PostMapping("/changeAccountInfo")
    public String changeAccountInfo(@ModelAttribute(value = "tempAccount") Account tempAccount, String username, Model model)
    {
        Account beforeAccount = accountService.getAccount(username);
        if (tempAccount.getPassword() == "" || tempAccount.getPassword() == null)
        {
            tempAccount.setPassword(beforeAccount.getPassword());
        }
        MD5 md5 = new MD5();
        md5.start(tempAccount.getPassword());
        tempAccount.setPassword(md5.getResultMessage().toUpperCase());

        accountManagerService.updateAccountInfo(tempAccount);
        return viewAccountManager(model);
    }

    @GetMapping("/viewAccountCart")
    public String viewAccountCart(String username, Model model)
    {
        Account account = accountService.getAccount(username);
        account.setUsername(username);
        model.addAttribute("account", account);

        Cart cart = new Cart();
        List<CartItem> cartItemList = cartItemService.getItemByUsername(account.getUsername());
        for (int i = 0; i < cartItemList.size(); i++)
        {
            Item item = catalogService.getItem(cartItemList.get(i).getItemId());
            cartItemList.get(i).setItem(item);
            cart.addCartItem(cartItemList.get(i));
        }
        cart.setUsername(account.getUsername());

        model.addAttribute("cart", cart);
        return "/cart/Cart";
    }

    @GetMapping("/viewAccountOrders")
    public String viewAccountOrders(String username, Model model)
    {
        List<Order> orderList = orderService.getOrdersByUsername(username);
        model.addAttribute("orderList", orderList);
        return "/manager/ViewOrderInfo";
    }

    @GetMapping("/removeOrder")
    public String removeOrder(int orderId, String username, Model model)
    {
        accountManagerService.removeOrderByOrderId(orderId);
        return viewAccountOrders(username, model);
    }

}
