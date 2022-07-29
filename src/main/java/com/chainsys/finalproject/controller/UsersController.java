package com.chainsys.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.finalproject.pojo.Users;
import com.chainsys.finalproject.service.UserService;

@Controller
@RequestMapping("/users")
public class UsersController {
@Autowired
UserService usservice;
@GetMapping("usersform")
public String showAddForm(Model model)
{
	Users theuser=new Users();
	model.addAttribute("adduser",theuser);
	return "";
}
@PostMapping("/addusers")

	public String addNewUsers(@ModelAttribute("adduser")Users theuser)
	{
	usservice.save(theuser);
	return"";
}
@GetMapping("updateform")

	public String updateUsers(@RequestParam("users_id") int id,Model model)
	{
	Users theusers=usservice.findById(id);
	model.addAttribute("updateusers",theusers);
	return " ";
}
@PostMapping("/updateusers")
public String updateUsers(@ModelAttribute("updateusers")Users theusers)
{
	usservice.save(theusers);
	return "";
}
@GetMapping("/deletedoctor")
public String deleteusers(@RequestParam("users_id")int id)
{
	usservice.deleteById(id);
	return "redirect:/users/ ";
}
@GetMapping("/findusersbyid")
public String findusersById(@RequestParam("docid")int id,Model model)
{
	Users theuser=usservice.findById(id);
	model.addAttribute("finduserid",theuser);
	return "find-doctor-id-form";
}
@GetMapping("findlist")

public String getAllusers(Model model)
{
	List<Users>userlist=usservice.getUserss();
	model.addAttribute("allusers",userlist);
	return "list-doctors";
}
}
