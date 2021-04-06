package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.domain.Sequence;
import org.csu.mypetstore.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderManagerService
{
    @Autowired
    private OrderManagerMapper orderManagerMapper;

    @Autowired
    private SequenceMapper sequenceMapper;

    @Autowired
    private ItemMapper itemMapper;

    @Autowired
    private LineItemManagerMapper lineItemManagerMapper;

    //插入订单
    public void insertOrder(Order order)
    {
//        orderMapper.insertOrder(order);
//        order.setOrderId(orderMapper.getOrderNum());
//
//        for (int i = 0; i < order.getLineItems().size(); i++)
//        {
//            order.getLineItems().get(i).setOrderId(order.getOrderId());
//            orderMapper.insertLineItem(order.getLineItems().get(i));
//        }
//        orderMapper.removeCartByUsername(order.getUsername());

        order.setOrderId(this.getNextId("ordernum"));
        for (int i = 0; i < order.getLineItems().size(); i++)
        {
            LineItem lineItem = (LineItem) order.getLineItems().get(i);
            String itemId = lineItem.getItemId();
            Integer increment = new Integer(lineItem.getQuantity());

            Item item = itemMapper.getItem(itemId);
            item.setQuantity(itemMapper.getInventoryQuantity(itemId));
            lineItem.setItem(item);

            Map<String, Object> param = new HashMap<String, Object>(2);
            param.put("itemId", itemId);
            param.put("increment", increment);

            itemMapper.updateInventoryQuantity(param);
        }

        orderManagerMapper.insertOrder(order);
        orderManagerMapper.insertOrderStatus(order);
        for (int i = 0; i < order.getLineItems().size(); i++)
        {
            LineItem lineItem = (LineItem) order.getLineItems().get(i);
            lineItem.setOrderId(order.getOrderId());
            lineItemManagerMapper.insertLineItem(lineItem);
            //orderManagerMapper.insertOrderStatus(order, i + 1);
        }

        orderManagerMapper.removeCartByUsername(order.getUsername());
    }

    //插入订单状态
    public void insertOrderStatus(Order order)//, int lineId)
    {
        orderManagerMapper.insertOrderStatus(order);//, lineId);//, lineId);
    }

    //得到订单
    public Order getOrder(int orderId)
    {
        Order order = orderManagerMapper.getOrder(orderId);
        order.setLineItems(lineItemManagerMapper.getLineItemsByOrderId(orderId));

        for (int i = 0; i < order.getLineItems().size(); i++)
        {
            LineItem lineItem = (LineItem) order.getLineItems().get(i);
            Item item = itemMapper.getItem(lineItem.getItemId());
            item.setQuantity(itemMapper.getInventoryQuantity(lineItem.getItemId()));
            lineItem.setItem(item);
        }

        return order;
    }

    //通过名字得到订单
    public List<Order> getOrdersByUsername(String username)
    {
        return orderManagerMapper.getOrdersByUsername(username);
    }

    public int getNextId(String name)
    {
        Sequence sequence = new Sequence(name, -1);
        sequence = (Sequence) sequenceMapper.getSequence(sequence);
        if (sequence == null)
        {
            throw new RuntimeException("Error: A null sequence was returned from the database (could not get next " + name
                    + " sequence).");
        }
        Sequence parameterObject = new Sequence(name, sequence.getNextId() + 1);
        if (sequenceMapper.updateSequence(parameterObject))
        {
            return parameterObject.getNextId();
        }
        else
        {
            throw new RuntimeException("Can't updateSequence!");
        }
    }

    //更改订单
    public void updateOrder(Order order)
    {
        orderManagerMapper.updateOrderByOrderId(order);
        updateOrderLineStatue(order);
    }

    // 通过订单id和lineID修改订单状态
    // P:未处理
    // R:已处理
    public void updateOrderLineStatue(Order order)
    {
        if (order.getStatus() == "R")
        {
            orderManagerMapper.changeOrderLineTo_R(order.getOrderId());
        }
        else if (order.getStatus() == "P")
        {
            orderManagerMapper.changeOrderLineTo_P(order.getOrderId());
        }
        else
        {
            System.out.println("Error!!!!!!!!!!!!");
        }
    }
}
