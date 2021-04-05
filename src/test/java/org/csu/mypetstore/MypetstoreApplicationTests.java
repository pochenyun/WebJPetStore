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

    @Autowired
    private CartItemMapper cartItemMapper;


    @Test
    void contextLoads()
    {
        List<CartItem> cartItemList = cartItemService.getItemByUsername("999999");
        System.out.println(cartItemList.size());
        for (int i = 0; i < cartItemList.size(); i++)
        {
            cartItemList.get(i).getItemId();
            cartItemList.get(i).getProductId();
        }
    }
}
