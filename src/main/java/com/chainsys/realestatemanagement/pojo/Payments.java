package com.chainsys.realestatemanagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Payments")
public class Payments {
	@Id
	@Column(name="invoice_id")
	private int invoiceId;
	
	@Column(name="land_assestid")
	private int landAssestid;
	
	@Column(name="pg_assestid")
	private int pgAssestid;
	
	@Column(name="appartment_assestid")
	private int appartmentAssestid;
	
	@Column(name="buyer_assestid")
	private int buyerAssestid;
	
	@Column(name="dates")
	private Date dates;
	
	@Column(name="amount")
	private double amount;
	
	public int getInvoiceId() {
		return invoiceId;
	}

	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}

	public int getLandAssestid() {
		return landAssestid;
	}

	public void setLandAssestid(int landAssestid) {
		this.landAssestid = landAssestid;
	}

	public int getPgAssestid() {
		return pgAssestid;
	}

	public void setPgAssestid(int pgAssestid) {
		this.pgAssestid = pgAssestid;
	}

	public int getAppartmentAssestid() {
		return appartmentAssestid;
	}

	public void setAppartmentAssestid(int appartmentAssestid) {
		this.appartmentAssestid = appartmentAssestid;
	}

	public int getBuyerAssestid() {
		return buyerAssestid;
	}

	public void setBuyerAssestid(int buyerAssestid) {
		this.buyerAssestid = buyerAssestid;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	
}

	