package com.chainsys.realestatemanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "assest")
public class Assest {

	@Id
	@Column(name = "ASSEST_ID")
	private int id;
	@Column(name = "owner_id")
	private int usersId;
	@Column(name="post")
	private byte[] image;
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

//private int ownerId;
//	public int getOwnerId() {
//		return ownerId;
//	}
//
//	public void setOwnerId(int ownerId) {
//		this.ownerId = ownerId;
//	}
@OneToOne(mappedBy="paymentDetail",fetch=FetchType.LAZY)
private Payments paymentDetail;

	public Payments getPaymentDetail() {
	return paymentDetail;
}

public void setPaymentDetail(Payments paymentDetail) {
	this.paymentDetail = paymentDetail;
}

	@Column(name = "location ")
	private String location;
	@Column(name = "contact")
	private long contactNumber;
	@Column(name = "address")
	private String address;
	@Column(name = "dates")
	private Date assetdate;
	@Column(name = "status")
	private String status;
	@Column(name = "price")
	private double price;
	@Column(name = "length")
	private int length;
	@Column(name = "breadth")
	private int breadth;
	@Column(name = "square_feet")
	private int squareFeet;
	@Column(name = "survey_no")
	private int surveyNumber;
	@Column(name = "patta_no")
	private int pattaNumber;
	@Column(name = "approved_type")
	private String approvedType;
	@Column(name = "facing")
	private String facing;
	@Column(name = "assest_type ")
	private String assestType;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="owner_id",nullable =false,insertable =false,updatable =false)
	private Users users; // pk class
	
	
	public Users getUser() {
		return users;
	}

	public void setUser(Users user) {
		this.users = user;
	}

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

//public Date getDate() {
//	return date;
//}
//public void setDate(Date date) {
//	this.date = date;
//}
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

}
