package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.persistence.AccountManagerMapper;
import org.csu.mypetstore.persistence.AccountMapper;
import org.csu.mypetstore.persistence.CartItemMapper;
import org.csu.mypetstore.persistence.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountManagerService {
    @Autowired
    AccountManagerMapper accountManagerMapper;

    @Autowired
    CartItemMapper cartItemMapper;

    @Autowired
    OrderMapper orderMapper;

    public List<String> getAccountList(){
        return accountManagerMapper.getAccountList();
    }

    public void removeAccountByUsername(String username){
        accountManagerMapper.removeAccountByUsername(username);
        cartItemMapper.removeAllItemByUsername(username);
        List<Integer> tempOrderId = accountManagerMapper.getOrderIdByUsername(username);
        for(int i = 0; i < tempOrderId.size(); i ++){
            accountManagerMapper.removeOrdersByOrderId(tempOrderId.get(i));
        }
    }

    public void updateAccountInfo(Account account){
        accountManagerMapper.updateAccountInfo(account);
        accountManagerMapper.updatePassword(account);
    }

    public void removeOrderByOrderId(int orderId){
        accountManagerMapper.removeOrdersByOrderId(orderId);
    }

}
