package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.persistence.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService
{
    @Autowired
    private OrderMapper orderMapper;

    public List<Order> getOrdersByUsername(String username)
    {
        return orderMapper.getOrdersByUsername(username);
    }
}
