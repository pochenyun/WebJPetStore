package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderManagerMapper
{
    // 根据用户名得到订单
    List<Order> getOrdersByUsername(String username);

    // 根据订单ID得到订单
    Order getOrder(int orderId);

    // 插入新订单
    void insertOrder(Order order);

    // 插入新订单状态
    void insertOrderStatus(Order order);

    // 得到Order数目
    int getOrderNum();

    // 插入订单项
    void insertLineItem(LineItem lineItem);

    // 通过名字删除cart
    void removeCartByUsername(String username);

    // 通过用户名更改订单
    void updateOrderByUsername(Order order);


}
