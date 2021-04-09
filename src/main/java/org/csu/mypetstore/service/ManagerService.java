package org.csu.mypetstore.service;


import org.csu.mypetstore.domain.Manager;
import org.csu.mypetstore.persistence.ManagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerService {

    @Autowired
    ManagerMapper managerMapper;

    public Manager getManagerById(String id){
        return managerMapper.getManagerById(id);
    }

    public Manager getManagerByIdAndPassword(String id,String password){
        Manager manager=new Manager();
        manager.setId(id);
        manager.setPassword(password);
        return managerMapper.getManagerByIdAndPassword(manager);
    }

}
