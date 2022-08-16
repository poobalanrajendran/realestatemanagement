package com.chainsys.realestatemanagement.dto;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.Payments;

public class AssetAndPaymentDTO {

	@Autowired
	private Assest assest;
	private Payments payments;
	public Assest getAssest() {
		return assest;
	}
	public void setAssest(Assest assest) {
		this.assest = assest;
	}
	public Payments getPayments() {
		return payments;
	}
	public void setPayments(Payments payments) {
		this.payments = payments;
	}
	
	
}
