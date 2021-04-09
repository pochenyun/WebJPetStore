package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Item;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemManageMapper {
    void insertItem(Item item);
    void insertQuantity(Item item);
    void updateItem(Item item);
    void updateInventoryQuantity(Item item);
    List<Item> getItemList();
    Item getItem(String itemId);
    void removeItemById(String itemId);
    void removeInventoryById(String itemId);
    List<Item> searchItemList(String keyValue);
}
