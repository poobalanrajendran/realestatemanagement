package com.chainsys.realestatemanagement.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Appartments {
	@Id
	private int app_id ;
	private int owner_id ;
	private int app_locations  ;
	private int app_length ;
	private int app_breadth ;
	private int app_squarefeet ;
	private int app_surveyno  ;
	private int app_pattano  ;
	private long appcontact ;
	private String app_status  ;
	private double app_price ;
	private String app_lift  ;
	private String app_floor ;
	private String app_address  ;
	//private String app_image  ;
	private Date dates;
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	public int getOwner_id() {
		return owner_id;
	}
	public void setOwner_id(int owner_id) {
		this.owner_id = owner_id;
	}
	public int getApp_locations() {
		return app_locations;
	}
	public void setApp_locations(int app_locations) {
		this.app_locations = app_locations;
	}
	public int getApp_length() {
		return app_length;
	}
	public void setApp_length(int app_length) {
		this.app_length = app_length;
	}
	public int getApp_breadth() {
		return app_breadth;
	}
	public void setApp_breadth(int app_breadth) {
		this.app_breadth = app_breadth;
	}
	public int getApp_squarefeet() {
		return app_squarefeet;
	}
	public void setApp_squarefeet(int app_squarefeet) {
		this.app_squarefeet = app_squarefeet;
	}
	public int getApp_surveyno() {
		return app_surveyno;
	}
	public void setApp_surveyno(int app_surveyno) {
		this.app_surveyno = app_surveyno;
	}
	public int getApp_pattano() {
		return app_pattano;
	}
	public void setApp_pattano(int app_pattano) {
		this.app_pattano = app_pattano;
	}
	public long getAppcontact() {
		return appcontact;
	}
	public void setAppcontact(long appcontact) {
		this.appcontact = appcontact;
	}
	public String getApp_status() {
		return app_status;
	}
	public void setApp_status(String app_status) {
		this.app_status = app_status;
	}
	public double getApp_price() {
		return app_price;
	}
	public void setApp_price(double app_price) {
		this.app_price = app_price;
	}
	public String getApp_lift() {
		return app_lift;
	}
	public void setApp_lift(String app_lift) {
		this.app_lift = app_lift;
	}
	public String getApp_floor() {
		return app_floor;
	}
	public void setApp_floor(String app_floor) {
		this.app_floor = app_floor;
	}
	public String getApp_address() {
		return app_address;
	}
	public void setApp_address(String app_address) {
		this.app_address = app_address;
	}
//	public String getApp_image() {
//		return app_image;
//	}
//	public void setApp_image(String app_image) {
//		this.app_image = app_image;
//	}
	public Date getDates() {
		return dates;
	}
	public void setDates(Date dates) {
		this.dates = dates;
	}
	
}
