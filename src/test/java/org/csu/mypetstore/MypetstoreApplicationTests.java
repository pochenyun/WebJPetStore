package org.csu.mypetstore;

import org.csu.mypetstore.domain.*;
import org.csu.mypetstore.persistence.*;
import org.csu.mypetstore.service.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
class MypetstoreApplicationTests
{
    @Autowired
    private ProductManageService productManageService;

    @Autowired
    private ItemManageService itemManageService;

    @Autowired
    private AccountManagerService accountManagerService;

    @Autowired
    private AccountManagerMapper accountManagerMapper;

    @Test
    void contextLoads()
    {
        List<String> accountList =  accountManagerService.getAccountList();
        for (int i = 0; i < accountList.size(); i++)
        {
            System.out.println(accountList.get(i));
        }
    }
}
