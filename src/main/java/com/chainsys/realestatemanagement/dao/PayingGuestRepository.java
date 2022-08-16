package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.model.Appartments;
import com.chainsys.realestatemanagement.model.PayingGuest;

public interface PayingGuestRepository extends CrudRepository< PayingGuest,Integer> {
	PayingGuest findById(int id);
		
	PayingGuest save( PayingGuest app);
	// used for adding a new customer and modifying the existing customer
	void deleteById(int id);
	List< PayingGuest> findAll();
}