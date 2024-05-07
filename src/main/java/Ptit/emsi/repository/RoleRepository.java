package Ptit.emsi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Ptit.emsi.model.Role;


@Repository
public interface RoleRepository extends JpaRepository<Role, Integer>{

}
 