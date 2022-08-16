package com.chainsys.realestatemanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="payingguest")
public class PayingGuest {

	@Id
	@Column(name="pg_id")
	private int pgId;
	
	@Column(name="rent")
	private String rent;
	
	@Column(name="foodfacility")
	private String foodFacility;
	
	@Column(name="ac_nonac")
	private String acNonac;
	
	@Column(name="advance")
	private int advance;
	
	@Column(name="lift")
	private String lift;
	
	@Column(name="floor")
	private String floor;
	
	@Column(name="pg_type")
	private String pgType;
	
	
	public int getPgId() {
		return pgId;
	}

	public void setPgId(int pgId) {
		this.pgId = pgId;
	}

	public String getRent() {
		return rent;
	}

	public void setRent(String rent) {
		this.rent = rent;
	}

	public String getFoodFacility() {
		return foodFacility;
	}

	public void setFoodFacility(String foodFacility) {
		this.foodFacility = foodFacility;
	}

	public String getAcNonac() {
		return acNonac;
	}

	public void setAcNonac(String acNonac) {
		this.acNonac = acNonac;
	}

	public int getAdvance() {
		return advance;
	}

	public void setAdvance(int advance) {
		this.advance = advance;
	}

	public String getLift() {
		return lift;
	}

	public void setLift(String lift) {
		this.lift = lift;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getPgType() {
		return pgType;
	}

	public void setPgType(String pgType) {
		this.pgType = pgType;
	}

	
	
	
	

}
