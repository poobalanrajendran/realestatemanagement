package com.chainsys.realestatemanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appartment")
public class Appartments {
	
	@Id
	
	@Column(name="app_id")
private int appartmentId;
	
	@Column(name="security")
	private String security;
		
		@Column(name="floor")
	private String floor;
		
		@Column(name="lift")
	private String lift; 
	
	public int getAppartmentId() {
		return appartmentId;
	}

	public void setAppartmentId(int appartmentId) {
		this.appartmentId = appartmentId;
	}

	public String getSecurity() {
		return security;
	}

	public void setSecurity(String security) {
		this.security = security;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getLift() {
		return lift;
	}

	public void setLift(String lift) {
		this.lift = lift;
	}

	
}
