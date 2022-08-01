package com.chainsys.realestatemanagement.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Payments {
	@Id

	private int invoice_id;
	private int land_assestid;
	private int pg_assestid;
	private int appartment_assestid;
	private int buyer_assestid;
	private Date dates;
	private double amount;

	public int getInvoice_id() {
		return invoice_id;
	}

	public void setInvoice_id(int invoice_id) {
		this.invoice_id = invoice_id;
	}

	public int getLand_assestid() {
		return land_assestid;
	}

	public void setLand_assestid(int land_assestid) {
		this.land_assestid = land_assestid;
	}

	public int getPg_assestid() {
		return pg_assestid;
	}

	public void setPg_assestid(int pg_assestid) {
		this.pg_assestid = pg_assestid;
	}

	public int getAppartment_assestid() {
		return appartment_assestid;
	}

	public void setAppartment_assestid(int appartment_assestid) {
		this.appartment_assestid = appartment_assestid;
	}

	public int getBuyer_assestid() {
		return buyer_assestid;
	}

	public void setBuyer_assestid(int buyer_assestid) {
		this.buyer_assestid = buyer_assestid;
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
