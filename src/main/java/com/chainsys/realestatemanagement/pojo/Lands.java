package com.chainsys.realestatemanagement.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
//import javax.persistence.OneToMany;
//import javax.persistence.ManyToOne;
@Entity
@Table(name="lands")
public class Lands {
	@Id
	private int land_id ;

	private int owner_id  ;
	private String locations ;
	private int land_length ;
	private int land_breadth  ;
	private int land_squarefeet ; 
	private int land_surveyno ;
	private int land_pattano ;
	private String land_type ; 
	private long contact_number ; 
	private String land_address ;
	private String land_status ;
	//private String lands_image ;
	private double price  ; 
	private Date dates;
	public int getLand_id() {
		return land_id;
	}
	public void setLand_id(int land_id) {
		this.land_id = land_id;
	}
	public int getOwner_id() {
		return owner_id;
	}
	public void setOwner_id(int owner_id) {
		this.owner_id = owner_id;
	}
	public String getLocations() {
		return locations;
	}
	public void setLocations(String locations) {
		this.locations = locations;
	}
	public int getLand_length() {
		return land_length;
	}
	public void setLand_length(int land_length) {
		this.land_length = land_length;
	}
	public int getLand_breadth() {
		return land_breadth;
	}
	public void setLand_breadth(int land_breadth) {
		this.land_breadth = land_breadth;
	}
	public int getLand_squarefeet() {
		return land_squarefeet;
	}
	public void setLand_squarefeet(int land_squarefeet) {
		this.land_squarefeet = land_squarefeet;
	}
	public int getLand_surveyno() {
		return land_surveyno;
	}
	public void setLand_surveyno(int land_surveyno) {
		this.land_surveyno = land_surveyno;
	}
	public int getLand_pattano() {
		return land_pattano;
	}
	public void setLand_pattano(int land_pattano) {
		this.land_pattano = land_pattano;
	}
	public String getLand_type() {
		return land_type;
	}
	public void setLand_type(String land_type) {
		this.land_type = land_type;
	}
	public long getContact_number() {
		return contact_number;
	}
	public void setContact_number(long contact_number) {
		this.contact_number = contact_number;
	}
	public String getLand_address() {
		return land_address;
	}
	public void setLand_address(String land_address) {
		this.land_address = land_address;
	}
	public String getLand_status() {
		return land_status;
	}
	public void setLand_status(String land_status) {
		this.land_status = land_status;
	}
//	public String getLands_image() {
//		return lands_image;
//	}
//	public void setLands_image(String lands_image) {
//		this.lands_image = lands_image;
//	}
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
