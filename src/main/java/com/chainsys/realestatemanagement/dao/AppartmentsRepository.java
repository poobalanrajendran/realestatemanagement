package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.pojo.Appartments;
import com.chainsys.realestatemanagement.pojo.Users;

public interface AppartmentsRepository extends CrudRepository< Appartments,Integer> {
	 Appartments findById(int id);
	
	 Appartments save( Appartments ap);
	// used for adding a new customer and modifying the existing customer
	void deleteById(int id);
	List< Appartments> findAll();



}
