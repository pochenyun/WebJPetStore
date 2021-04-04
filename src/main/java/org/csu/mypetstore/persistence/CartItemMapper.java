package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.CartItem;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartItemMapper {
    void insertCart(CartItem cartItem);

    void removeItemById(String itemId);

    List<CartItem> get();

    void update(CartItem cartItem);

    List<CartItem> getItemByUsername(String username);

    void removeAllItemByUsername(String username);
}
