package org.csu.mypetstore;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.persistence.*;
import org.csu.mypetstore.service.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
class MypetstoreApplicationTests
{
    @Autowired
    ProductManageService productManageService;

    @Test
    void contextLoads()
    {
//        Product product = new Product();
//        product.setProductId("TEST-000");
//        product.setCategoryId("FISH");
//        product.setDescription("It is only for test");
//        product.setName("test000");
//
//        //productManageService.insertProduct();
//        product.setName("text001");
//        product.setDescription("It is only for test update");
//        productManageService.updateProduct(product);
//
//        productManageService.removeProductById(product.getProductId());
//        List<Product> productList = productManageService.getProductList();
//
//        for (Product product: productList)
//        {
//            System.out.println(product.getProductId() + "\n");
//            System.out.println(product.getCategoryId() + "\n");
//            System.out.println(product.getDescription() + "\n");
//            System.out.println(product.getName() + "\n");
//            System.out.println(product.getClass()+ "\n");
//        }

//        Product product = productManageService.getProduct("K9-BD-01");
//        System.out.println(product.getProductId() + "\n");
//        System.out.println(product.getCategoryId() + "\n");
//        System.out.println(product.getDescription() + "\n");
//        System.out.println(product.getName() + "\n");

        List<Product> productList = productManageService.searchProductList("b");

        for (Product product: productList)
        {
            System.out.println(product.getProductId() + "\n");
            System.out.println(product.getCategoryId() + "\n");
            System.out.println(product.getDescription() + "\n");
            System.out.println(product.getName() + "\n");
            System.out.println(product.getClass()+ "\n");
        }

    }
}
