package org.csu.mypetstore;

import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.LineItem;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.domain.Sequence;
import org.csu.mypetstore.persistence.LineItemMapper;
import org.csu.mypetstore.persistence.OrderMapper;
import org.csu.mypetstore.persistence.SequenceMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.csu.mypetstore.service.OrderService;

import java.math.BigDecimal;
import java.util.List;

@SpringBootTest
class MypetstoreApplicationTests
{
    @Autowired
    private SequenceMapper sequenceMapper;

    @Test
    void contextLoads()
    {
//        List<Order> orderList = orderMapper.getOrdersByUsername("j2ee");
//        for(int i = 0; i < orderList.size(); ++i)
//        {
//            System.out.println(orderList.get(i).getBillAddress1());
//            System.out.println(i);
//        }

//        Order order = orderMapper.getOrder(1001);
//        System.out.println(order.getBillAddress1() + " " + order.getUsername() + " " + order.getOrderId());
//
//        //不能插入重复id……不然会报错
//        order.setOrderId(1110);
//        orderMapper.insertOrder(order);
//        orderMapper.insertOrderStatus(order);

//        List<LineItem> lineItemsList = lineItemMapper.getLineItemsByOrderId(1);
//        for(int i = 0; i < lineItemsList.size(); ++i)
//        {
//            System.out.println(lineItemsList.get(i).getItemId());
//            System.out.println(lineItemsList.get(i).getOrderId());
//            System.out.println(i);
//        }
//        System.out.println("48545454");

//        LineItem lineItem = new LineItem();
//        lineItem.setOrderId(5);
//        lineItem.setLineNumber(47);
//        lineItem.setItemId("sdf");
//        lineItem.setQuantity(45);
//        lineItem.setUnitPrice((BigDecimal.valueOf(53.65)));
//        lineItemMapper.insertLineItem(lineItem);

        Sequence sequence1 = new Sequence("linenum", 144);
        Sequence sequence2 = sequenceMapper.getSequence(sequence1);

        System.out.println(sequence1.getName() + " " + sequence1.getNextId());
        System.out.println(sequence2.getName() + " " + sequence2.getNextId());

        System.out.println(sequenceMapper.updateSequence(sequence1));

    }

}
