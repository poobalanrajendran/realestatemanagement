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
	private UsersRepository userrepo;//
	@Autowired
	private AssestRepository assestrepository;
	
	public List<Users> getuser()
		{
			List<Users>listuser =userrepo.findAll();
			return listuser;
	}
	
	public Users getByUserName(String userName)
	{
		System.out.println("userName ....."+userName);
		Users userdtls =userrepo.findByUsersName(userName);
		return userdtls;
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
	
	public UsersAndAssetDTO getUsersAndAssetDetail(int id)
	{
		Users user=findById(id);
		UsersAndAssetDTO dto= new UsersAndAssetDTO();
		dto.setUser(user);//setBloodgroup(bloodGroup);
		List<Assest> assestlist=assestrepository.findByusersId(id);//.findByBloodGroupId(id); // method created in repo in FK
		Iterator<Assest> itr = assestlist.iterator();
		while(itr.hasNext())
		{
			dto.addUsersAndAssest((Assest)itr.next());
		}
		return dto;		
}
}