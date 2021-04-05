package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.ItemManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/ItemManage")
public class ItemManageController {
    @Autowired
    ItemManageService itemManageService;

    @GetMapping("/insertItem")
    public String insertItem(String itemId, String productId, BigDecimal listPrice, String attribute1, Model model){
        Item item=new Item();
        item.setItemId(itemId);
        item.setProductId(productId);
        item.setListPrice(listPrice);
        item.setAttribute1(attribute1);
        BigDecimal a=new BigDecimal(Integer.toString(100));
        item.setUnitCost(a);
        item.setSupplierId(1);
        item.setStatus("P");
        item.setAttribute2(null);
        item.setAttribute3(null);
        item.setAttribute4(null);
        item.setAttribute5(null);
        itemManageService.insertItem(item);
        model.addAttribute("item",item);
        return " ";
    }

    @GetMapping("/updateItem")
    public String updateItem(String itemId,BigDecimal listPrice, String attribute1, int quantity,Model model){
        Item item=itemManageService.getItem(itemId);
        item.setListPrice(listPrice);
        item.setAttribute1(attribute1);
        item.setQuantity(quantity);
        itemManageService.updateItem(item);
        model.addAttribute("item",item);
        return " ";
    }

    @GetMapping("/removeItemById")
    public String removeItemById(String itemId,String productId,Model model){
        itemManageService.removeItemById(itemId);
        List<Item> itemList=itemManageService.getItemListByProduct(productId);
        model.addAttribute("itemList",itemList);
        return " ";
    }

    @GetMapping("/searchItem")
    public String searchProduct(String itemId,Model model){
        if (itemId==null)
            itemId="";
        Item item=itemManageService.getItem(itemId);
        List<Item> itemList= new ArrayList<>();
        itemList.add(item);
        model.addAttribute("itemList",itemList);
        return " ";
    }
}
