package org.csu.mypetstore.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
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

import java.io.PrintWriter;
import java.util.List;

import static ch.qos.logback.core.joran.action.ActionConst.NULL;


@Controller

@RequestMapping("/catalog")
@SessionAttributes(value = {"catagory","account"})
public class CatalogController {

    @Autowired
    private CatalogService catalogService;

    @RequestMapping("/viewCategory")
    public String viewCategory(String categoryId, Model model){
        if(categoryId!=null){
            Category category=catalogService.getCategory(categoryId);
            List<Product> productList=catalogService.getProductListByCategory(categoryId);
            model.addAttribute("category",category);
            model.addAttribute("productList",productList);
            return "catalog/category";
        }
        return "catalog/main";
    }

    @GetMapping("/view")
    public String view(Account account, Model model){
        model.addAttribute(account);
        return "catalog/main";
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

//        resp.setContentType("application/json;charset=uft-8");
//        JSONArray searchArray = new JSONArray();
//        for(int i=0;i<productList.size();i++){
//            JSONObject searchObject = new JSONObject();
//            searchObject.put("name",productList.get(i).getName());//产品名字
//            searchArray.add(searchObject);
//        }
//
//        String searchString = searchArray.toJSONString();//转换为JSON字符串
//
//        PrintWriter out = resp.getWriter();
//        out.print(searchString);
//
//        out.flush();
//        out.close();
        return  productList;
    }



}