package org.csu.mypetstore.persistence;

import org.apache.ibatis.annotations.Param;
import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderManagerMapper
{
    // 根据用户名得到订单
    List<Order> getOrdersByUsername(String username);

    // 得到所有订单
    List<Order> getAllOrders();

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

    // 通过订单id更改订单
    void updateOrderByOrderId(Order order);

    // 通过订单id和lineID修改订单状态为R
    void changeOrderLineTo_R(@Param("orderId") int orderId);

    // 通过订单id和lineID修改订单状态为P
    void changeOrderLineTo_P(@Param("orderId") int orderId);

    // 通过订单id和lineID修改详细订单
    void updateLineItem(@Param("lineItem") LineItem lineItem);

    // 通过名字删除cart
    void removeCartByUsername(String username);

    // 通过orderId删除order
    void removeOrderByOrderId(@Param("orderId") int orderId);

    // 通过orderId删除orderstatus
    void removeOrderStatusByOrderId(@Param("orderId") int orderId);

    // 通过orderId和lineId删除lineitem
    void removeLineItemByOrderIdAndLineId(@Param("orderId") int orderId, @Param("lineId") int lineId);
}
