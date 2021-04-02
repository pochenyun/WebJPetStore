package org.csu.mypetstore.service.impl;

import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.persistence.CartItemMapper;
import org.csu.mypetstore.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartItemServiceImpl implements CartItemService
{
    @Autowired
    private CartItemMapper cartItemMapper;

    public List<CartItem> get()
    {
        return cartItemMapper.get();
    }

    public void insertCart(CartItem cartItem)
    {
        cartItemMapper.insertCart(cartItem);
    }

    public void update(String itemId, int quantity, float total1)
    {
        cartItemMapper.update(itemId, quantity, total1);
    }

    public void removeItemById(String itemId)
    {
        cartItemMapper.removeItemById(itemId);
    }
}
