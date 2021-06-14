/**
 * 杨龙昊
 **/
package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Manager;
import org.csu.mypetstore.service.AccountManagerService;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/manager")
public class ManagerController {

    @Autowired
    ManagerService managerService;

    @Autowired
    AccountService accountService;

    @Autowired
    AccountManagerService accountManagerService;


    @PostMapping("/signOn")
    public String signOn(@ModelAttribute(value = "tempManager") Manager tempManager,Model model){
        Manager manager=managerService.getManagerByIdAndPassword(tempManager.getPassword(),tempManager.getPassword());
        if (manager == null){
            model.addAttribute("messageSignOn", "Invalid username or password.  Signon failed.");
            return " ";
        }
        else
            {
            manager.setPassword(null);
            model.addAttribute("manager",manager);
            System.out.println("成功");
                List<Account> accountList = accountManagerService.getAccountList();
                model.addAttribute("accountList", accountList);
                return "/manager/AccountManager";
        }
    }

    @GetMapping("/signOnForm")
    public String signOnForm(){
        return "/manager/signOnForm";
    }
}
