package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.ProductManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/ProductManage")
public class ProductManageController {

    @Autowired
    ProductManageService productManageService;

    @GetMapping("/insertProduct")
    public String insertProduct(String productId,String categoryId,String name,String description,Model model){
        Product product=new Product();
        product.setProductId(productId);
        product.setCategoryId(categoryId);
        product.setName(name);
        product.setDescription("<image src=\"../images/bird2.gif\">"+description);
        productManageService.insertProduct(product);
        model.addAttribute("product",product);
        return "#";//可以设置一个跳转界面显示“添加成功”。
    }

    @GetMapping("/updateProduct")
    public String updateProduct(String productId,String name,String description,Model model){
        Product product=productManageService.getProduct(productId);
        product.setName(name);
        product.setDescription("<image src=\"../images/bird2.gif\">"+description);
        productManageService.updateProduct(product);
        model.addAttribute("product",product);
        return "#"; //同理，跳转页面
    }

    @GetMapping("/removeProductById")
    public String removeProductById(String productId,String categoryId,Model model){
        productManageService.removeProductById(productId);
        List<Product> productList=productManageService.getProductListByCategory(categoryId);
        model.addAttribute("productList",productList);
        return "#";//prouct展示页面。
    }

    @GetMapping("/searchProduct")
    public String searchProduct(String productId,Model model){
        if (productId==null)
            productId="";
        Product product=productManageService.getProduct(productId);
        List<Product> productList= new ArrayList<>();
        productList.add(product);
        //保存数据
        model.addAttribute("productList",productList);

        //跳转页面
        return "prouct展示页面";
    }
}
