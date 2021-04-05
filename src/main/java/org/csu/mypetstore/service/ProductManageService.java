package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.ProductManageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductManageService
{
    @Autowired
    ProductManageMapper productManageMapper;

    public void insertProduct(Product product)
    {
        productManageMapper.insertProduct(product);
    }

    public void updateProduct(Product product)
    {
        productManageMapper.updateProduct(product);
    }

    public void removeProductById(String productId)
    {
        productManageMapper.removeProductById(productId);
    }

    public List<Product> getProductListByCategory(String categoryId)
    {
        return productManageMapper.getProductListByCategory(categoryId);
    }

    public Product getProduct(String productId)
    {
        return productManageMapper.getProduct(productId);
    }
}
