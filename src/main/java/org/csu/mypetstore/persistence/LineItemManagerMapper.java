package org.csu.mypetstore.persistence;

import org.apache.ibatis.annotations.Param;
import org.csu.mypetstore.domain.LineItem;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LineItemManagerMapper
{
    // 根据订单ID得到订单中的商品项
    List<LineItem> getLineItemsByOrderId(int orderId);

    // 插入商品项
    boolean insertLineItem(LineItem lineItem);

    // 根据订单ID更新得到订单中的商品项
    void updateLineItemByOrderIdAndLineId(LineItem lineItem);

    // 根据订单ID删除订单中的商品项
    void deleteLineItemByOrderId(int orderId);

    // 根据订单ID和LineId删除订单中的商品项
    void deleteLineItemByOrderIdAndLineId(@Param("orderId") int orderId, @Param("lineId") int lineId);
}