package com.chainsys.realestatemanagement.model;

public class Login {
private int usersId;
private String roles ;
private String passwords;
private String emailId;

public String getPasswords() {
	return passwords;
}
public void setPasswords(String passwords) {
	this.passwords = passwords;
}
public int getUsersId() {
	return usersId;
}
public void setUsersId(int usersId) {
	this.usersId = usersId;
}
public String getRoles() {
	return roles;
}
public void setRoles(String roles) {
	this.roles = roles;
}
public String getEmailId() {
	return emailId;
}
public void setEmailId(String emailId) {
	this.emailId = emailId;
}





}
