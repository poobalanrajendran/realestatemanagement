package com.chainsys.realestatemanagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
//import javax.persistence.OneToMany;
//import javax.persistence.ManyToOne;
@Entity
@Table(name="lands")
public class Lands {
	@Id
	@Column(name="land_id")
	private int landId ;
	
	@Column(name="owner_id")
	private int ownerId  ;
	
	@Column(name="locations")
	private String locations ;
	
	@Column(name="land_length")
	private int landLength ;
	
	@Column(name="land_breadth")
	private int landBreadth  ;
	
	@Column(name="land_squarefeet")
	private int landSquarefeet ; 
	
	@Column(name="land_surveyno")
	private int landSurveyno ;
	
	@Column(name="land_pattano")
	private int landPattano ;
	
	@Column(name="land_type")
	private String landType ; 
	
	@Column(name="contact_number")
	private long contactNumber ;
	
	@Column(name="land_address")
	private String landAddress ;
	
	@Column(name="land_status")
	private String landStatus ;
	//private String lands_image ;
	
	@Column(name="price")
	private double price  ;
	
	@Column(name="dates")
	private Date dates;
	
	

	public int getLandId() {
		return landId;
	}

	public void setLandId(int landId) {
		this.landId = landId;
	}

	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	public String getLocations() {
		return locations;
	}

	public void setLocations(String locations) {
		this.locations = locations;
	}

	public int getLandLength() {
		return landLength;
	}

	public void setLandLength(int landLength) {
		this.landLength = landLength;
	}

	public int getLandBreadth() {
		return landBreadth;
	}

	public void setLandBreadth(int landBreadth) {
		this.landBreadth = landBreadth;
	}

	public int getLandSquarefeet() {
		return landSquarefeet;
	}

	public void setLandSquarefeet(int landSquarefeet) {
		this.landSquarefeet = landSquarefeet;
	}

	public int getLandSurveyno() {
		return landSurveyno;
	}

	public void setLandSurveyno(int landSurveyno) {
		this.landSurveyno = landSurveyno;
	}

	public int getLandPattano() {
		return landPattano;
	}

	public void setLandPattano(int landPattano) {
		this.landPattano = landPattano;
	}

	public String getLandType() {
		return landType;
	}

	public void setLandType(String landType) {
		this.landType = landType;
	}

	public long getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getLandAddress() {
		return landAddress;
	}

	public void setLandAddress(String landAddress) {
		this.landAddress = landAddress;
	}

	public String getLandStatus() {
		return landStatus;
	}

	public void setLandStatus(String landStatus) {
		this.landStatus = landStatus;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	
	

}
