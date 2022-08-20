package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.realestatemanagement.dao.PayingGuestRepository;
import com.chainsys.realestatemanagement.model.PayingGuest;

@Service
public class PayingGuestService {
	@Autowired
	private PayingGuestRepository payingguest;

	public List<PayingGuest> getpaying()
	{
		return payingguest.findAll();
	}

		public PayingGuest save(PayingGuest pay)
		{
		return  payingguest.save(pay);
		}
	public PayingGuest findById(int id)
	{
		return  payingguest.findById(id);
	}
	public void deleteById(int id)
	{
		 payingguest.deleteById(id);
	}
}


