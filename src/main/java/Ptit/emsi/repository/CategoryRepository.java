package Ptit.emsi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Ptit.emsi.model.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
