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

import com.chainsys.realestatemanagement.pojo.Users;
import com.chainsys.realestatemanagement.service.UserService;

@Controller
@RequestMapping("/users")
public class UsersController {
	@Autowired
	UserService usservice;

	@GetMapping("/usersform")
	public String showAddForm(Model model) {
		Users theuser = new Users();
		model.addAttribute("adduser", theuser);
		return "add-adduser-form";
	}

	@PostMapping("addusers")

	public String addNewUsers(@ModelAttribute("adduser") Users theuser) {
		usservice.save(theuser);
		return "redirect:/users/userslist";
	}

	@GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("userid") int id,Model model)
    {
        Users userdet=usservice.findById(id);
        model.addAttribute("updateuser", userdet);
        return "update-users-form";
    }
    @PostMapping("/updateuser")
    public String updateuser(@ModelAttribute("updateuser") Users userid) {
        usservice.save(userid);
        return "redirect:/users/userslist";
    }

	@GetMapping("/deleteusers")
	public String deleteusers(@RequestParam("users_id") int id) {
		usservice.deleteById(id);
		return "redirect:/users/userslist ";
	}

  @GetMapping("/findusersbyid") public String
  findusersById(@RequestParam("userid")int id,Model model) { Users
  theuser=usservice.findById(id); model.addAttribute("finduserid",theuser);
  return "find-user-id-form"; }

	@GetMapping("/userslist")

	public String getAllusers(Model model) {
		List<Users> userlist = usservice.getUserss();
		model.addAttribute("allusers", userlist);
		return "list-users";
	}
}
