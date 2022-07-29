package com.chainsys.finalproject.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.finalproject.pojo.Lands;


public interface LandsRepository extends CrudRepository<Lands,Integer> {
	Lands findById(int id);
	
	Lands save(Lands dr);
	// used for adding a new customer and modifying the existing customer
	void deleteById(int id);
	List<Lands> findAll();
 

}
