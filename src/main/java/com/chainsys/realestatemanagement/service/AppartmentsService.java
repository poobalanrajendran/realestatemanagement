package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.realestatemanagement.dao.AppartmentsRepository;
import com.chainsys.realestatemanagement.model.Appartments;

@Service
public class AppartmentsService {
	@Autowired
	private AppartmentsRepository appobj;

	public List<Appartments> getappart()
	{
		List< Appartments>appart=appobj.findAll();
		return appart;
	}
	

		public Appartments save(Appartments app)
		{
		return appobj.save(app);
		}
	public Appartments findById(int id)
	{
		return appobj.findById(id);
	}
	
	public void deleteById(int id)
	{
		appobj.deleteById(id);
	}
}
