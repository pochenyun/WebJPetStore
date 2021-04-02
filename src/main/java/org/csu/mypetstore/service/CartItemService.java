package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.CartItem;

import java.util.List;

public interface CartItemService
{
    public List<CartItem> get();

    public void insertCart(CartItem cartItem);

    public void update(String itemId, int quantity, float total1);

    public void removeItemById(String itemId);
}
