package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.domain.Sequence;
import org.csu.mypetstore.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        }

        orderManagerMapper.removeCartByUsername(order.getUsername());
    }

    //插入
    public void insertOrderStatus(Order order)
    {
        orderManagerMapper.insertOrderStatus(order);
    }


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
}
