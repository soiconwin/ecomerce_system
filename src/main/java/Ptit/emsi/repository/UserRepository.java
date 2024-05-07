package Ptit.emsi.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Ptit.emsi.model.User;


@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	Optional<User>  findUserByEmail(String email);
	

}
