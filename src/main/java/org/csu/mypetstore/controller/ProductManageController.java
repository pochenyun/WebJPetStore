package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.ProductManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/ProductManage")
public class ProductManageController
{

    @Autowired
    ProductManageService productManageService;

    @PostMapping("/insertProduct")
    public String insertProduct(String productId, String categoryId, String name, String description, Model model)
    {
        Product product = new Product();
        product.setProductId(productId);
        product.setCategoryId(categoryId);
        product.setName(name);
        product.setDescription("<image src=\"../images/bird2.gif\">" + description);
        productManageService.insertProduct(product);
        List<Product> productList = productManageService.getProductList();
        model.addAttribute("productList", productList);
        model.addAttribute("product", product);
        return "manager/ProductManage";//可以设置一个跳转界面显示“添加成功”。
    }

    @ResponseBody
    @GetMapping("/updateProduct")
    public String updateProduct(String productId, String name, String description, Model model)
    {
        Product product = productManageService.getProduct(productId);
        product.setName(name);
        product.setDescription(description);
        productManageService.updateProduct(product);
        model.addAttribute("product", product);
        return "success"; //
    }

    @GetMapping("/removeProductById")
    public String removeProductById(String productId, Model model)
    {
        System.out.println(productId);
        productManageService.removeProductById(productId);
        List<Product> productList = productManageService.getProductList();
        model.addAttribute("productList", productList);
        return "manager/ProductManage";//prouct展示页面。
    }

    @PostMapping("/searchProduct")
    public String searchProduct(String keyValue, Model model)
    {

        if (keyValue == null)
        {
            keyValue = "";
        }
        System.out.println(keyValue);
        List<Product> productList = productManageService.searchProductList(keyValue);
        model.addAttribute("productList", productList);

        //跳转页面
        return "manager/ProductManage";
    }

    @GetMapping("viewProduct")
    public String viewProduct(Model model)
    {
        List<Product> productList = productManageService.getProductList();
        for (int i = 0; i < productList.size(); i++)
        {
            String deleteString = "";
            for (int j = 0; j < productList.get(i).getDescription().length(); j++)
            {
                if (productList.get(i).getDescription().charAt(j) == '>')
                {
                    deleteString += productList.get(i).getDescription().substring(0, j + 1);
                    break;
                }
            }
            productList.get(i).setDescription(productList.get(i).getDescription().replaceAll(deleteString, ""));
        }
        model.addAttribute("productList", productList);
        return "manager/ProductManage";
    }
}
