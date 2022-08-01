package com.chainsys.realestatemanagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="PayingGuest")
public class PayingGuest {

@Id
@Column(name="pg_id")
			private	int pg_id ;

@Column(name="owner_id")
private int ownerId;

@Column(name="pg_location")
private int	pgLocation;

@Column(name="pg_phoneno")
private long pgPhoneno ;

@Column(name="pg_address")
private	String pgAddress ;

@Column(name="pg_rent")
private double	pgRent ;

@Column(name="pg_foodfacility")
private	String pgfoodFacility ;

@Column(name="pg_AC_nonAC")
private	String pgacNonac ;
//private	String pg_image ;
@Column(name="pg_status")
private	String pgStatus ;

@Column(name="dates")
private Date dates;


public int getPg_id() {
	return pg_id;
}

public void setPg_id(int pg_id) {
	this.pg_id = pg_id;
}

public int getOwnerId() {
	return ownerId;
}

public void setOwnerId(int ownerId) {
	this.ownerId = ownerId;
}

public int getPgLocation() {
	return pgLocation;
}

public void setPgLocation(int pgLocation) {
	this.pgLocation = pgLocation;
}

public long getPgPhoneno() {
	return pgPhoneno;
}

public void setPgPhoneno(long pgPhoneno) {
	this.pgPhoneno = pgPhoneno;
}

public String getPgAddress() {
	return pgAddress;
}

public void setPgAddress(String pgAddress) {
	this.pgAddress = pgAddress;
}

public double getPgRent() {
	return pgRent;
}

public void setPgRent(double pgRent) {
	this.pgRent = pgRent;
}

public String getPgfoodFacility() {
	return pgfoodFacility;
}

public void setPgfoodFacility(String pgfoodFacility) {
	this.pgfoodFacility = pgfoodFacility;
}

public String getPgacNonac() {
	return pgacNonac;
}

public void setPgacNonac(String pgacNonac) {
	this.pgacNonac = pgacNonac;
}

public String getPgStatus() {
	return pgStatus;
}

public void setPgStatus(String pgStatus) {
	this.pgStatus = pgStatus;
}

public Date getDates() {
	return dates;
}

public void setDates(Date dates) {
	this.dates = dates;
}


			
}
