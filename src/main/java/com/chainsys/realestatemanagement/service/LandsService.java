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
private LandsRepository landobj;

public List<Lands> getland()
{
	List<Lands>listland=landobj.findAll();
	return listland;
}
@Transactional

	public Lands save(Lands land)
	{
	return landobj.save(land);
	}
public Lands findById(int id)
{
	return landobj.findById(id);
}
@Transactional
public void deleteById(int id)
{
	landobj.deleteById(id);
}
}
