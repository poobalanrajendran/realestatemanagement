package com.chainsys.realestatemanagement.model;

import java.sql.Date;

public class AssetPayGuestAppartment {
	
	private int id;
	private int usersId;
	private String location;
	private long contactNumber;
	private String address;
	private Date assetdate;
	private String status;
	private double price;
	private int length;
	private int breadth;
	private int squareFeet;
	private int surveyNumber;
	private int pattaNumber;
	private String approvedType;
	private String facing;
	private String assestType;
	private int pgId;
	private String rent;
	private String foodFacility;
	private String acNonac;
	private int advance;
	private String lift;
	private String floor;
	private String pgType;
	private int appartmentId;
	private String security;
	


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUsersId() {
		return usersId;
	}
	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getAssetdate() {
		return assetdate;
	}
	public void setAssetdate(Date assetdate) {
		this.assetdate = assetdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getBreadth() {
		return breadth;
	}
	public void setBreadth(int breadth) {
		this.breadth = breadth;
	}
	public int getSquareFeet() {
		return squareFeet;
	}
	public void setSquareFeet(int squareFeet) {
		this.squareFeet = squareFeet;
	}
	public int getSurveyNumber() {
		return surveyNumber;
	}
	public void setSurveyNumber(int surveyNumber) {
		this.surveyNumber = surveyNumber;
	}
	public int getPattaNumber() {
		return pattaNumber;
	}
	public void setPattaNumber(int pattaNumber) {
		this.pattaNumber = pattaNumber;
	}
	public String getApprovedType() {
		return approvedType;
	}
	public void setApprovedType(String approvedType) {
		this.approvedType = approvedType;
	}
	public String getFacing() {
		return facing;
	}
	public void setFacing(String facing) {
		this.facing = facing;
	}
	public String getAssestType() {
		return assestType;
	}
	public void setAssestType(String assestType) {
		this.assestType = assestType;
	}
	
	public int getPgId() {
		return pgId;
	}
	public void setPgId(int pgId) {
		this.pgId = pgId;
	}
	
	public String getFoodFacility() {
		return foodFacility;
	}
	public void setFoodFacility(String foodFacility) {
		this.foodFacility = foodFacility;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
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
}