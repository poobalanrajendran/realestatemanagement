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
		List<Assest> appart = assestrepo.findAll();
		return appart;
	}
	

	public Assest save(Assest app) {
		return assestrepo.save(app);
	}

	public Assest findById(int id) {
		return assestrepo.findById(id);
	}
	
	
	
	public List<Assest> findByLocation(String location) {
		List<Assest> assetDtls = assestrepo.findByLocation(location);
		return assetDtls;
	}
	
	public List<Assest> findByusersId(int id)
	{
		List<Assest> assetUserId=assestrepo.findByusersId(id);
		return assetUserId;
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
