package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.realestatemanagement.dao.LandsRepository;
import com.chainsys.realestatemanagement.pojo.Lands;

@Service
public class LandsService {
@Autowired
private LandsRepository landRepo ;

public List<Lands> getland()
{
	List<Lands>listland=landRepo.findAll();
	return listland;
}
@Transactional

	public Lands save(Lands land)
	{
	return landRepo.save(land);
	}
public Lands findById(int id)
{
	return landRepo.findById(id);
}
@Transactional
public void deleteById(int id)
{
	landRepo.deleteById(id);
}
}
