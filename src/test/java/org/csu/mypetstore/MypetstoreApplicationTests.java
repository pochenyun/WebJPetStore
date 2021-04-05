package org.csu.mypetstore;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.persistence.*;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.CartItemService;
import org.csu.mypetstore.service.CatalogService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.csu.mypetstore.service.OrderService;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
class MypetstoreApplicationTests
{
    @Autowired
    private AccountService accountService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CatalogService catalogService;

    @Autowired
    private OrderService orderService;


    @Test
    void contextLoads()
    {
//        Cart cart = new Cart();
//        cart.setUsername();
    }
}
