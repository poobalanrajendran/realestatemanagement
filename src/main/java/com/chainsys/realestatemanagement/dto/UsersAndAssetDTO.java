package com.chainsys.realestatemanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.Users;

public class UsersAndAssetDTO {
	@Autowired
	private Users user;
	private List<Assest> Assestlist = new ArrayList<Assest>();
	
	public List<Assest> getAssestlist() {
		return Assestlist;
	}
	public void addUsersAndAssest(Assest assest) {
	Assestlist.add(assest)	;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
//	public List<Assest> getPersonlist() {
//		return personlist;
//	}
//	public void addUserAndAssetList(Assest person) {
//		personlist.add(person);
//	}
	
	}
