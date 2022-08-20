package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.realestatemanagement.dao.AssestRepository;
import com.chainsys.realestatemanagement.dao.PaymentsRepository;
import com.chainsys.realestatemanagement.dto.AssetAndPaymentDTO;
import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.Payments;

@Service

public class AssestService {

	@Autowired
	private AssestRepository assestrepo;
@Autowired
private PaymentsRepository paymentrepo;

	public List<Assest> getAssest() {
		return assestrepo.findAll();
	}
	

	public Assest save(Assest app) {
		return assestrepo.save(app);
	}

	public Assest findById(int id) {
		return assestrepo.findById(id);
	}
	
	
	
	public List<Assest> findByLocation(String location) {
		return assestrepo.findByLocation(location);
	}
	
	public List<Assest> findByusersId(int id)
	{
		return assestrepo.findByusersId(id);
	}

	
	public void deleteById(int id) {
		assestrepo.deleteById(id);
	}
	
	public AssetAndPaymentDTO getAssetAndPayments(int id)
	{
	Assest assest=findById(id);
	AssetAndPaymentDTO dto=new AssetAndPaymentDTO();
	dto.setAssest(assest);
	Payments payments=paymentrepo.findByid(id);
	dto.setPayments(payments);
	return dto;
	}
	
	

}
