package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductManageMapper
{
    void insertProduct(Product product);

    void updateProduct(Product product);

    List<Product> getProductListByCategory(String categoryId);

    void removeProductById(String productId);

    Product getProduct(String productId);
}
