package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.model.Users;



public interface UsersRepository extends CrudRepository<Users,Integer> {
	Users findById(int id);
	
	Users save(Users user);
	// used for adding a new customer and modifying the existing customer
	void deleteById(int id);
	List<Users> findAll();
	Users findByUsersName(String usersName);
//	@Query(value="select * from users ", nativeQuery = true)
//    Users getuserAccessForLogin();
}
