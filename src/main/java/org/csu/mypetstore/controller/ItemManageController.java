package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.ItemManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/ItemManage")
public class ItemManageController {
    @Autowired
    ItemManageService itemManageService;

    @PostMapping("/insertItem")
    public String insertItem(String itemId, String productId, String listPrice, String unitCost, String quantity,String attribute1, Model model){
        System.out.println(itemId);
        Item item=new Item();
        item.setItemId(itemId);
        item.setProductId(productId);
        BigDecimal price=new BigDecimal(Integer.parseInt(listPrice));
        item.setListPrice(price);
        item.setAttribute1(attribute1);
        BigDecimal cost=new BigDecimal(Integer.parseInt(unitCost));
        item.setUnitCost(cost);
        item.setSupplierId(1);
        item.setStatus("P");
        item.setAttribute2(null);
        item.setAttribute3(null);
        item.setAttribute4(null);
        item.setAttribute5(null);
        int quantity1 = Integer.parseInt(quantity);
        item.setQuantity(quantity1);
        itemManageService.insertItem(item);
        List<Item> itemList=itemManageService.getItemList();
        model.addAttribute("itemList",itemList);
        model.addAttribute("item",item);
        return "manager/ItemManage";
    }

    @GetMapping("/updateItem")
    public void updateItem(String itemId,String listPrice, String unitCost, String attribute1, String quantity,Model model){
        Item item=itemManageService.getItem(itemId);
        BigDecimal price=new BigDecimal(Integer.parseInt(listPrice));
        item.setListPrice(price);
        BigDecimal cost=new BigDecimal(Integer.parseInt(unitCost));
        item.setUnitCost(cost);
        item.setAttribute1(attribute1);
        int quantity1 =  Integer.parseInt(quantity);
        item.setQuantity(quantity1);
        itemManageService.updateItem(item);
        model.addAttribute("item",item);
    }

    @GetMapping("/removeItemById")
    public String removeItemById(String ItemId,Model model){
        itemManageService.removeItemById(ItemId);
        List<Item> itemList=itemManageService.getItemList();
        model.addAttribute("itemList",itemList);
        return "manager/ItemManage";
    }

    @PostMapping("/searchItem")
    public String searchProduct(String keyValue,Model model){
        if (keyValue==null)
            keyValue="";
        System.out.println(keyValue);
        List<Item> itemList= itemManageService.searchItemList(keyValue);
        model.addAttribute("itemList",itemList);
        //跳转页面
        return "manager/ItemManage";
    }

    @GetMapping("/viewItem")
    public String viewItem(Model model){
        List<Item> itemList= itemManageService.getItemList();
        model.addAttribute("itemList",itemList);
        //跳转页面
        return "manager/ItemManage";
    }

}
