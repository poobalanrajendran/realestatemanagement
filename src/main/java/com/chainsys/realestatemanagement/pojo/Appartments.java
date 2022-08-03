package com.chainsys.realestatemanagement.pojo;

import java.sql.Date;

//import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Appartments {
	@Id
	
	@Column(name="app_id")
	private int appId ;
	
	@Column(name="owner_id")
	private int ownerId ;
	
	@Column(name="app_locations")
	private String appLocations  ;
	
	@Column(name="app_length")
	private int appLength ;
	
	@Column(name="app_breadth")
	private int appBreadth ;
	
	@Column(name="app_squarefeet")
	private int appsquareFeet ;
	
	@Column(name="app_surveyno")
	private int appSurveyno  ;
	
	@Column(name="app_pattano")
	private int appPattano  ;
	
	@Column(name="appcontact_number")
	private long appContact ;
	
	@Column(name="app_status")
	private String appStatus  ;
	
	@Column(name="app_price")
	private double appPrice ;
	
	@Column(name="app_lift")
	private String appLift  ;
	
	@Column(name="app_floor")
	private String appFloor ;
	
	@Column(name="app_address")
	private String appAddress  ;
	
	//private String app_image  ;
	
	@Column(name="dates")
	private Date dates;
	
	
	
	public int getAppId() {
		return appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
	}

	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	public String getAppLocations() {
		return appLocations;
	}

	public void setAppLocations(String appLocations) {
		this.appLocations = appLocations;
	}

	public int getAppLength() {
		return appLength;
	}

	public void setAppLength(int appLength) {
		this.appLength = appLength;
	}

	public int getAppBreadth() {
		return appBreadth;
	}

	public void setAppBreadth(int appBreadth) {
		this.appBreadth = appBreadth;
	}

	public int getAppsquareFeet() {
		return appsquareFeet;
	}

	public void setAppsquareFeet(int appsquareFeet) {
		this.appsquareFeet = appsquareFeet;
	}

	public int getAppSurveyno() {
		return appSurveyno;
	}

	public void setAppSurveyno(int appSurveyno) {
		this.appSurveyno = appSurveyno;
	}

	public int getAppPattano() {
		return appPattano;
	}

	public void setAppPattano(int appPattano) {
		this.appPattano = appPattano;
	}

	public long getAppContact() {
		return appContact;
	}

	public void setAppContact(long appContact) {
		this.appContact = appContact;
	}

	public String getAppStatus() {
		return appStatus;
	}

	public void setAppStatus(String appStatus) {
		this.appStatus = appStatus;
	}

	public double getAppPrice() {
		return appPrice;
	}

	public void setAppPrice(double appPrice) {
		this.appPrice = appPrice;
	}

	public String getAppLift() {
		return appLift;
	}

	public void setAppLift(String appLift) {
		this.appLift = appLift;
	}

	public String getAppFloor() {
		return appFloor;
	}

	public void setAppFloor(String appFloor) {
		this.appFloor = appFloor;
	}

	public String getAppAddress() {
		return appAddress;
	}

	public void setAppAddress(String appAddress) {
		this.appAddress = appAddress;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	
	}
