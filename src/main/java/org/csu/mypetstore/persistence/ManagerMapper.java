package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Manager;
import org.springframework.stereotype.Repository;

@Repository
public interface ManagerMapper {

    Manager getManagerById(String id);

    Manager getManagerByIdAndPassword(Manager manager);
}
