package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.CategoryMapper;
import org.csu.mypetstore.persistence.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


public interface CatalogService
{
    public List<Category> getCategoryList();

    public Category getCategory(String categoryId);

    public Product getProduct(String productId);

    public List<Product> getProductListByCategory(String categoryId) ;

    public List<Product> searchProductList(String keyword) ;

    public List<Item> getItemListByProduct(String productId) ;

    public Item getItem(String itemId) ;

    public boolean isItemInStock(String itemId) ;
}
