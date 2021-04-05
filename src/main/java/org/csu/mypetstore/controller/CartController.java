package org.csu.mypetstore.controller;
import javax.servlet.http.HttpServletRequest;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/Cart")
@SessionAttributes(value = {"account","cart"})
public class CartController {

    @Autowired
    CartItemService cartItemService;

    @Autowired
    CatalogService catalogService;

    Cart cart=new Cart();

    public void mergeCart(Cart cart){
        System.out.println("22222222222222222 " + cart.getCartItemList().size());
        for(int i = 0; i < cart.getCartItemList().size(); i++){
            String id = cart.getCartItemList().get(i).getItemId();
            for (int j = i+1; j <cart.getCartItemList().size(); j ++){
                if(id.equals(cart.getCartItemList().get(j).getItemId())){
                    cart.getCartItemList().get(i).setQuantity(cart.getCartItemList().get(i).getQuantity()+cart.getCartItemList().get(j).getQuantity());
                    cart.getCartItemList().get(i).setTotal(cart.getCartItemList().get(i).getQuantity() * cart.getCartItemList().get(i).getItem().getListPrice().floatValue());
                    cart.getCartItemList().remove(j);
                    j--;
                }
            }
        }
        System.out.println("333333333333333333 " + cart.getCartItemList().size());
        cartItemService.merge(cart);
    }

    //默认购物车里没有原物品哈哈
    @GetMapping("/addItemToCart")
    public String addItemToCart(String workingItemId, Model model){

        Account account = (Account)model.getAttribute("account");
        if(account == null){
            System.out.println("dshauodhasuodjaso");
            return "/account/SignonForm";
        }

        Item newItem = catalogService.getItem(workingItemId);
        //数据库部分
        CartItem cartItem=new CartItem(newItem.getItemId(),newItem.getProductId(),newItem.getAttribute1(),1,1,newItem.getListPrice().floatValue(),newItem.getListPrice().floatValue());
        cartItem.setUsername(account.getUsername());
        cartItemService.insertCart(cartItem);

        cart = new Cart();
        List<CartItem> cartItemList = cartItemService.getItemByUsername(account.getUsername());

        for(int i = 0;i <cartItemList.size();i++) {
            Item item = catalogService.getItem(cartItemList.get(i).getItemId());
            cartItemList.get(i).setItem(item);
            cart.addCartItem(cartItemList.get(i));
        }
        cart.setUsername(account.getUsername());

        //System.out.println("151556654849/89");
        mergeCart(cart);
        model.addAttribute("cart",cart);
        return "cart/Cart";
    }

    @GetMapping("/removeItemFromCart")
    public String removeItemFromCart(String workingItemId, Model model){
        cart.removeItemById(workingItemId);
        cartItemService.removeItemById(workingItemId);

        cart = new Cart();

        Account account =(Account)model.getAttribute("account");
        List<CartItem> cartItemList = cartItemService.getItemByUsername(account.getUsername());
        for(int i = 0;i <cartItemList.size();i++) {
            Item item = catalogService.getItem(cartItemList.get(i).getItemId());
            cartItemList.get(i).setItem(item);
            cart.addCartItem(cartItemList.get(i));
        }
        cart.setUsername(account.getUsername());

        mergeCart(cart);
        model.addAttribute("cart",cart);
        return "cart/Cart";
    }

//    @GetMapping("/updateCartQuantities")
//    public String updateCartQuantities(String workingItemId,Model model,HttpServletRequest request){
//        int quantity = Integer.parseInt((String) request.getParameter(workingItemId));
//        cart.setQuantityByItemId(workingItemId,quantity);
//        model.addAttribute("cart",cart);
//
//        float total=cart.getCartItembyID(workingItemId).getPrice()*quantity;
//        cartItemService.update(workingItemId,quantity,total);
//        return "cart/Cart";
//    }

    @GetMapping("/viewCart")
    public String viewCart(Model model){
//        List<CartItem>cartItemList = cartItemService.get();
//        model.addAttribute("cartItemList",cartItemList);
        cart = new Cart();
        Account account =(Account)model.getAttribute("account");

        if(account == null){
            System.out.println("dshauodhasuodjaso");
            return "/account/SignonForm";
        }

        List<CartItem> cartItemList = cartItemService.getItemByUsername(account.getUsername());
        for(int i = 0;i <cartItemList.size();i++) {
            Item item = catalogService.getItem(cartItemList.get(i).getItemId());
            cartItemList.get(i).setItem(item);
            cart.addCartItem(cartItemList.get(i));
        }
        cart.setUsername(account.getUsername());

        mergeCart(cart);
        model.addAttribute("cart",cart);
        return "cart/Cart";
    }

    @GetMapping("/checkOut")
    public String checkOut(Model model){
        model.addAttribute("cart",cart);
        return "cart/Checkout";
    }



    @ResponseBody
    @GetMapping("/updateQuantity")
    public String UpdateCartJSServlet(String quantity1,String name,Model model){
        System.out.println("更新数量");
        Account account = (Account) model.getAttribute("account");
        Iterator<CartItem> cartItemIterator = cart.getAllCartItems();
        String itemId = name;
        String quantityAll = "";
        try {
            int quantity = Integer.parseInt(quantity1);
            List<CartItem> list = cart.getCartItemList();

            for (int i=0;i<list.size();i++)
            {
                if(list.get(i).getItem().getItemId().equals(itemId))
                {
                    cart.setQuantityByItemId(itemId, quantity);
                    list.get(i).setQuantity(quantity);
                    quantityAll += quantity + "," + list.get(i).getTotal() + "," + cart.getSubTotal() + ",";
                }
            }
            if (quantity < 1) {
                cart.removeItemById(itemId);

            }
            float total = catalogService.getItem(itemId).getListPrice().floatValue() * quantity;
            System.out.println("数量  "+quantity + ";total:" + total);

            //试着传cartItem
            CartItem cartItem = new CartItem();
            cartItem.setItemId(name);
            cartItem.setQuantity(quantity);
            cartItem.setTotal(total);
            cartItem.setUsername(account.getUsername());
            cartItemService.update(cartItem);
        } catch (Exception e) {
            //ignore parse exceptions on purpose
            e.printStackTrace();
        }


        model.addAttribute("cart", cart);
        return quantityAll;
    }
}
