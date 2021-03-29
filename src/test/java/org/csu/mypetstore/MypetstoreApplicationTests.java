package org.csu.mypetstore;

import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.persistence.OrderMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.csu.mypetstore.service.OrderService;
import java.util.List;

@SpringBootTest
class MypetstoreApplicationTests
{
    @Autowired
    private OrderMapper orderMapper;

    @Test
    void contextLoads()
    {
        Order order = orderMapper.getOrder(1001);

        System.out.println(order.getBillAddress1() + " " + order.getUsername() + " " + order.getOrderId());
    }

}
