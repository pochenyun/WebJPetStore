package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Account;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountManagerMapper {
    List<Account> getAccountList();

    void removeAccountByUsername(String username);

    List<Integer> getOrderIdByUsername(String username);

    void removeOrdersByOrderId(int orderId);

    void updateAccountInfo(Account account);

    void updatePassword(Account account);
}
