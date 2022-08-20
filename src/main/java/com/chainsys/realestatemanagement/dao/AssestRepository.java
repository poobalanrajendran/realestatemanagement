package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.model.Assest;

public interface AssestRepository extends CrudRepository< Assest,Integer> {
	Assest findById(int id);
		
	Assest save( Assest assest);
	
	void deleteById(int id);
	List< Assest> findAll();
	List<Assest> findByusersId(int id);
	List<Assest> findByLocation(String location);

}
