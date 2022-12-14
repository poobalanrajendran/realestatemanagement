package com.chainsys.realestatemanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.realestatemanagement.dto.UsersAndAssetDTO;
import com.chainsys.realestatemanagement.model.Users;
import com.chainsys.realestatemanagement.service.UserService;
import com.chainsys.realestatemanagement.validation.InvalidInputDataException;

@Controller
@RequestMapping("/users")
public class UsersController {
	@Autowired
	UserService userService;

	@GetMapping("/usersform")
	public String showAddForm(Model model) {
		Users theuser = new Users();
		model.addAttribute("adduser", theuser);
		
		return "add-adduser-form";
	}

	@PostMapping("/addusers")

	public String addNewUser(@ModelAttribute("adduser") Users theuser, Model model) {
		Users pass=userService.getByPasswords(theuser.getPasswords());
		try
		{
			if(pass!=null)
			{
				throw new InvalidInputDataException("Already exit");
			}
		}
		catch(InvalidInputDataException e)
		{
			model.addAttribute("error","Error Name:" + e.getMessage());
			model.addAttribute("message", "Password is already exit");
			return "add-adduser-form";
		}
		/*EmailException*/
		Users useremail=userService.findByEmailId(theuser.getEmailId());
   	 
   	 try
   	 {
   		 if(useremail!=null) {
   		throw new InvalidInputDataException("Already exit");
   	 }}
   	 catch(InvalidInputDataException ex)
   	 {
   		 model.addAttribute("error", "Error Name:" + ex.getMessage());
   		 model.addAttribute("message","Email is already exit");
   		 return "add-adduser-form";
   	 }
   	
		
		userService.save(theuser);
		return "login";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("userid") int id, Model model) {
		Users userupdate = userService.findById(id);
		model.addAttribute("updateuser", userupdate);
		return "update-users-form";
		
	}

	@PostMapping("/updateuser")
	public String updateuser(@ModelAttribute("updateuser") Users userid) {
		
		userService.save(userid);
		
		return "update-users-form";
		

	}

	@GetMapping("/deleteusers")
	public String deleteuser(@RequestParam("userid") int id) {
		userService.deleteById(id);
		return "redirect:/users/userslist ";
	}

	@GetMapping("/findusersbyid")
	public String finduserById(@RequestParam("userid") int id, Model model) {
		Users theuser = userService.findById(id);
		model.addAttribute("finduserid", theuser);
		
		return "list-land";
	}

	@GetMapping("/userslist")

	public String getAlluser(Model model) {
		List<Users> userlist = userService.getuser();
		model.addAttribute("allusers", userlist);
		return "list-users";
	}
	
	@GetMapping("/getuserassests")
    public String getDetail(@RequestParam("id") int id,Model model) {
		UsersAndAssetDTO dto =userService.getUsersAndAssetDetail(id);
        model.addAttribute("userslist" ,dto.getUser());
        model.addAttribute("assetlist",dto.getAssestlist());
        return "list-userdetails-assest-byid";
    }
	
	@GetMapping("/login")
public String loginForm(Model model)
{
	Users theuser = new Users();
	model.addAttribute("userlogin", theuser);
	return "login";
	
}



@GetMapping("/deleteuserAdmin")
public String deleteusers(@RequestParam("userid") int id) {
	userService.deleteById(id);
	return "list-landAdmin";
}
}
