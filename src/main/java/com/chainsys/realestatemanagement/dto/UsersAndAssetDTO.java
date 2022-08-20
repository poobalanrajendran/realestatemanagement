package com.chainsys.realestatemanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.Users;

public class UsersAndAssetDTO {
	@Autowired
	private Users user;
	private List<Assest> assestList = new ArrayList<>();
	
	public List<Assest> getAssestlist() {
		return assestList;
	}
	public void addUsersAndAssest(Assest assest) {
	assestList.add(assest)	;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}

	
	}
