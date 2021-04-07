package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller

@RequestMapping("/catalog")
@SessionAttributes(value = {"catagory","account"})
public class CatalogController {

    @Autowired
    private CatalogService catalogService;


    @GetMapping("/view")
    public String view(Model model){
        Account account = (Account)model.getAttribute("account");
        System.out.println(account);
        model.addAttribute("account",account);
        return "catalog/Main";
    }

    @RequestMapping("/viewCategory")
    public String viewCategory(String categoryId, Model model){
        Account account = (Account)model.getAttribute("account");
        System.out.println(account);
        if(categoryId!=null){
            Category category=catalogService.getCategory(categoryId);
            List<Product> productList=catalogService.getProductListByCategory(categoryId);
            model.addAttribute("category",category);
            model.addAttribute("productList",productList);
            return "catalog/category";
        }
        return "catalog/Main";
    }

    @RequestMapping("searchProduct")
    public String searchProduct(String keyword,Model model)
    {

        if (keyword==null)
            keyword="";

        //request.setAttribute("keyword", keyword);
        System.out.println(keyword);
        List<Product> productList =  catalogService.searchProductList(keyword);
        System.out.println(productList);
        //保存数据
        model.addAttribute("productList", productList);

        //跳转页面
        return "catalog/SearchProducts";
    }

    @GetMapping("viewItem")
    public String viewItem(String itemId,Model model)
    {
//        itemId = request.getParameter("itemId");
//        CatalogService service = new CatalogService();
        Item item = catalogService.getItem(itemId);

//        HttpSession session = request.getSession();
//        session.setAttribute("item", item);
        model.addAttribute("item",item);

        return "catalog/Item";
    }

    @GetMapping("viewProduct")
    public String viewProduct(String productId,Model model)
    {
        Product product = catalogService.getProduct(productId);
        List<Item> itemList = catalogService.getItemListByProduct(productId);

        model.addAttribute("product", product);
        model.addAttribute("itemList", itemList);

        return "catalog/Product";

    }

    @RequestMapping("autoComplete")
    @ResponseBody
    public List<Product> autoComplete(String keyword,Model model)
    {
        List<Product>productList = catalogService.searchProductList(keyword);//获取产品列表
        return  productList;
    }

}