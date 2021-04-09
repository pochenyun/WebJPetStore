package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductManageMapper
{
    void insertProduct(Product product);
    void updateProduct(Product product);
    List<Product> getProductList();
    List<Product> searchProductList(String keyValue);
    void removeProductById(String productId);
    Product getProduct(String productId);
}
