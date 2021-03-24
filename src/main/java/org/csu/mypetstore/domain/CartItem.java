package org.csu.mypetstore.domain;

import java.io.Serializable;
import java.math.BigDecimal;

public class CartItem implements Serializable {
  private static final long serialVersionUID = 6620528781626504362L;
  public String itemId;
  public String productId;
  public String description;
  public int instock;
  public int quantity;
  public float price;
  public float total1;
  private Item item;
  private boolean inStock;
  private BigDecimal total;

  public CartItem(String itemId, String productId, String description, int instock, int quantity, float price, float total1) {
    this.itemId = itemId;
    this.productId = productId;
    this.description = description;
    this.instock = instock;
    this.quantity = quantity;
    this.price = price;
    this.total1 = total1;
  }

  public CartItem(){

  }

  public String getItemId() {
    return itemId;
  }

  public void setItemId(String itemId) {
    this.itemId = itemId;
  }

  public String getProductId() {
    return productId;
  }

  public void setProductId(String productId) {
    this.productId = productId;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public int getInstock() {
    return instock;
  }

  public void setInstock(int instock) {
    this.instock = instock;
  }

  public float getPrice() {
    return price;
  }

  public void setPrice(float price) {
    this.price = price;
  }

  public float getTotal1() {
    return total1;
  }

  public void setTotal(float total1) {
    this.total1 = total1;
  }


  public boolean isInStock() {
    return inStock;
  }

  public void setInStock(boolean inStock) {
    this.inStock = inStock;
  }

  public BigDecimal getTotal() {
    return total;
  }

  public Item getItem() {
    return item;
  }

  public void setItem(Item item) {
    this.item = item;
    calculateTotal();
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
    calculateTotal();
  }

  public void incrementQuantity() {
    quantity++;
    calculateTotal();
  }

  private void calculateTotal() {
    if (item != null && item.getListPrice() != null) {
      total = item.getListPrice().multiply(new BigDecimal(quantity));
    } else {
      total = null;
    }
  }

}
