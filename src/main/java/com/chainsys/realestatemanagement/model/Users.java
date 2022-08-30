package com.chainsys.realestatemanagement.model;


import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "users_id")
    @SequenceGenerator(name = "users_id", sequenceName = "users_id",  allocationSize = 1)

	@Column(name="users_id")
	private int usersId;	
	@Column(name="users_name")
	private String usersName ;
	@Column(name="passwords")
	private String passwords ;	
	@Column(name="roles")
	private String roles ;	
	@Column(name="gender")
	private String gender;	
	@Column(name="email_id")
	private String emailId ;
	@Column(name="address")
	private String address ;	
	@Column(name="phone_no")
	private long phoneno;
	@Column(name="dates")
	private Date dates;
	
	@OneToMany(mappedBy="users",fetch=FetchType.LAZY)
	private List<Assest> asset; 
	
	public List<Assest> getAsset() {
		return asset;
	}

	public void setAsset(List<Assest> asset) {
		this.asset = asset;
	}

	public int getUsersId() {
		return usersId;
	}

	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getPasswords() {
		return passwords;
	}

	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	/*
	 * @Override public String toString() { System.out.println(
	 * usersId+"  "+usersName+" "+passwords+" "+roles+" "+gender+" "+emailId+" "
	 * +address+" "+phoneno); return String.format("%d, %s, %s, %s, %s, %s, %s,%d,"
	 * , usersId,usersName,passwords,roles,gender,emailId,address,phoneno); }
	 */
	
}