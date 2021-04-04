package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;

import java.util.List;

public interface CartItemService
{
    public List<CartItem> get();

    public void insertCart(CartItem cartItem);

    public void update(CartItem cartItem);

    public void removeItemById(String itemId);

    public List<CartItem> getItemByUsername(String username);

    public void removeAllItemByUsername(String username);

    public void merge(Cart cart);
}
