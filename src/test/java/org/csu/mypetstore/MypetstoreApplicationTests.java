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
    private ItemMapper itemMapper;

    @Test
    void contextLoads()
    {
//        List<Item> itemsList = itemMapper.getItemListByProduct("FI-SW-01");
//        for(int i = 0; i < itemsList.size(); ++i)
//        {
//            System.out.println(itemsList.get(i).getItemId());
//            System.out.println(i);
//        }

//        Item item = itemMapper.getItem("EST-1");
//        System.out.println(item.getItemId() + " " + item.getListPrice() + " " +item.getAttribute1());
//
//        System.out.println(itemMapper.getInventoryQuantity("EST-11"));

//        Map<String, Object> param = new HashMap<>();
//        param.put("itemid", "EST-22");
//        param.put("increment", 255);
//        itemMapper.updateInventoryQuantity(param);
//        System.out.println("cwc");

//        System.out.println(itemMapper.getInventoryQuantity("EST-15"));


    }

}
