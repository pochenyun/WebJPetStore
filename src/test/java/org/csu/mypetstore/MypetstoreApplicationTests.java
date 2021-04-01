package org.csu.mypetstore;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.persistence.ItemMapper;
import org.csu.mypetstore.persistence.LineItemMapper;
import org.csu.mypetstore.persistence.OrderMapper;
import org.csu.mypetstore.persistence.SequenceMapper;
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
    private OrderService orderService;

    @Test
    void contextLoads()
    {
//        Order order = orderService.getOrder(1001);
//        System.out.println(order.getBillAddress1());
//        order.setOrderId(1011);
//
//        orderService.insertOrder(order);

//        List<Order> orderList = orderService.getOrdersByUsername("j2ee");
//        for (int i = 0; i < orderList.size(); ++i)
//        {
//            System.out.println(orderList.get(i).getOrderId());
//            System.out.println("j2ee");
//        }

        System.out.println(orderService.getNextId("linenum"));

    }

}
