package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.pojo.Lands;

public interface LandsRepository extends CrudRepository<Lands,Integer>{
Lands findById(int id);
Lands save(Lands land);
void deleteById(int id);
List<Lands> findAll();

}
