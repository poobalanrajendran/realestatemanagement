package com.chainsys.finalproject.dao;

import java.util.List;

import com.chainsys.finalproject.pojo.Users;
import org.springframework.data.repository.CrudRepository;



public interface UsersRepository extends CrudRepository<Users,Integer> {
	Users findById(int id);
	
	Users save(Users dr);
	// used for adding a new customer and modifying the existing customer
	void deleteById(int id);
	List<Users> findAll();


}
