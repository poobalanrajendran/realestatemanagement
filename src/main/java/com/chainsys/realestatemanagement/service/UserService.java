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
	private UsersRepository userrepo;//
	
		public List<Users> getuser()
		{
			List<Users>listuser =userrepo.findAll();
			return listuser;
	}
		//@Transactional
	public Users save(Users user)
	{
		return userrepo.save(user);
	}
	public Users findById(int id)
	{
		return userrepo.findById(id);
	}
	@Transactional

	public void deleteById(int id)
	{
		userrepo.deleteById(id);
	}
	
}
