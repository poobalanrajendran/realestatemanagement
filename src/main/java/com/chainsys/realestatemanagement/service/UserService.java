package com.chainsys.realestatemanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.realestatemanagement.dao.AssestRepository;
import com.chainsys.realestatemanagement.dao.UsersRepository;
import com.chainsys.realestatemanagement.dto.UsersAndAssetDTO;
import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.Users;

@Service
public class UserService {

	@Autowired
	private UsersRepository userrepo;
	@Autowired
	private AssestRepository assestrepository;
	
	public List<Users> getuser()
		{
			return userrepo.findAll();
	}
	
	public Users getByUserName(String userName)
	{
		
		return userrepo.findByUsersName(userName);
	}
	
	public Users getByPasswords(String passwords)
	{
		return userrepo.findByPasswords(passwords);
	}
	
	public Users save(Users user)
	{
		return userrepo.save(user);
	}
	public Users findById(int id)
	{
		return userrepo.findById(id);
	}
	
	public Users findByEmailId(String emailId)
	{
		return userrepo.findByEmailId(emailId);
	}
	
	@Transactional

	public void deleteById(int id)
	{
		userrepo.deleteById(id);
	}
	
	public UsersAndAssetDTO getUsersAndAssetDetail(int id)
	{
		Users user=findById(id);
		UsersAndAssetDTO dto= new UsersAndAssetDTO();
		dto.setUser(user);
		List<Assest> assestlist=assestrepository.findByusersId(id);
		Iterator<Assest> itr = assestlist.iterator();
		while(itr.hasNext())
		{
			dto.addUsersAndAssest(itr.next());
		}
		return dto;		
}
}