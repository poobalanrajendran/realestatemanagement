package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.realestatemanagement.dao.AppartmentsRepository;
import com.chainsys.realestatemanagement.dao.LandsRepository;
import com.chainsys.realestatemanagement.pojo.Appartments;
import com.chainsys.realestatemanagement.pojo.Lands;

@Service
public class AppartmentsService {
	@Autowired
	private AppartmentsRepository appobj;

	public List<Appartments> getappart()
	{
		List< Appartments>appart=appobj.findAll();
		return appart;
	}
	//@Transactional

		public Appartments save(Appartments app)
		{
		return appobj.save(app);
		}
	public Appartments findById(int id)
	{
		return appobj.findById(id);
	}
	//@Transactional
	public void deleteById(int id)
	{
		appobj.deleteById(id);
	}
}
