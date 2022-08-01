package com.chainsys.realestatemanagement.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.realestatemanagement.dao.UsersRepository;
import com.chainsys.realestatemanagement.pojo.Users;

@Service
public class UserService {

	@Autowired
	private UsersRepository userobj;
	
		public List<Users> getUserss()
		{
			List<Users>listuser =userobj.findAll();
			return listuser;
	}
		//@Transactional
	public Users save(Users dr)
	{
		return userobj.save(dr);
	}
	public Users findById(int id)
	{
		return userobj.findById(id);
	}
	@Transactional

	public void deleteById(int id)
	{
		userobj.deleteById(id);
	}
	
}
