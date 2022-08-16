package com.chainsys.realestatemanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Payment")
public class Payments {
	@Id
	@Column(name="invoice_id")
	private long invoice;
	
	@Column(name="assests_id")
	private int id;
	
	@Column(name="buyer_assestid")
	private int buyerAssestid;
	
	@Column(name="dates")
	private Date assetdate;
	
	@Column(name="amount")
	private double amount;
	//
	@Column(name="card_number")
	private long cardNumber;
	
	@Column(name="cvv")
	private int cvvNumber;
	
	@Column(name="cardholder_name")
	private String nameHolder;
	
	@Column(name="expire_month")
	private String expireMonth;
	
	@Column(name="expire_year")
	private String expireYear;
	
	@Column(name="card_type")
	private String cardType;
	
	@Column(name="card_mode")
	private String cardMode;
	
	
	public String getCardMode() {
		return cardMode;
	}

	public void setCardMode(String cardMode) {
		this.cardMode = cardMode;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="assests_id",nullable=false,insertable=false,updatable=false)
	private Assest paymentDetail;
	
	public Assest getPaymentDetail() {
		return paymentDetail;
	}

	public void setPaymentDetail(Assest paymentDetail) {
		this.paymentDetail = paymentDetail;
	}

	public long getInvoice() {
		return invoice;
	}

	public void setInvoice(long invoice) {
		this.invoice = invoice;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBuyerAssestid() {
		return buyerAssestid;
	}

	public void setBuyerAssestid(int buyerAssestid) {
		this.buyerAssestid = buyerAssestid;
	}

	public Date getAssetdate() {
		return assetdate;
	}

	public void setAssetdate(Date assetdate) {
		this.assetdate = assetdate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public long getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}

	public int getCvvNumber() {
		return cvvNumber;
	}

	public void setCvvNumber(int cvvNumber) {
		this.cvvNumber = cvvNumber;
	}

	public String getNameHolder() {
		return nameHolder;
	}

	public void setNameHolder(String nameHolder) {
		this.nameHolder = nameHolder;
	}

	public String getExpireMonth() {
		return expireMonth;
	}

	public void setExpireMonth(String expireMonth) {
		this.expireMonth = expireMonth;
	}

	public String getExpireYear() {
		return expireYear;
	}

	public void setExpireYear(String expireYear) {
		this.expireYear = expireYear;
	}
	
	
}

	