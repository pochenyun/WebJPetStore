package org.csu.mypetstore;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.persistence.*;
import org.csu.mypetstore.service.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
class MypetstoreApplicationTests
{
    @Autowired
    private OrderManagerService orderManagerService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderManagerMapper orderManagerMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Test
    void contextLoads()
    {
        Order order = orderManagerService.getOrder(1008);
        System.out.println(order.getStatus());
        order.setStatus("R");
        orderManagerService.updateOrderLineStatue(order);
//        orderManagerService.updateOrder(order);
//        orderManagerMapper.changeOrderLineTo_P(1008, 1);
//        orderManagerMapper.changeOrderLineTo_R(1008, 2);
    }
}
