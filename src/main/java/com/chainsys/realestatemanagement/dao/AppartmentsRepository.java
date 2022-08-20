package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.model.Appartments;

public interface AppartmentsRepository extends CrudRepository< Appartments,Integer> {
	 Appartments findById(int id);
	
	 Appartments save( Appartments appartment);
	void deleteById(int id);
	List< Appartments> findAll();



}
