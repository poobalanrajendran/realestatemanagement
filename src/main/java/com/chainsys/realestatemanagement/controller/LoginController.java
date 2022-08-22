package com.chainsys.realestatemanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.realestatemanagement.model.Login;
import com.chainsys.realestatemanagement.model.Users;
import com.chainsys.realestatemanagement.service.UserService;

@Controller
@RequestMapping("/home")
public class  LoginController {
    @Autowired
    private UserService userservice;

    @GetMapping("/signin")
    public String signInPage(Model model) {
        Login login = new Login();
        model.addAttribute("signIn",login);
        return "/login";
    }
    
    @PostMapping("/userpage")
    public String userPage(@ModelAttribute("signIn") Login login, Model model) {
    	 Users userdetails =  userservice.findByEmailId(login.getEmailId());
        if (userdetails.getEmailId().equals(login.getEmailId()))
        {
       if (userdetails.getPasswords().equals(login.getPasswords()))
       {
        	 model.addAttribute("roles", userdetails.getRoles());
        	 model.addAttribute("userId", userdetails.getUsersId());
            return "index1";
        } else {
            model.addAttribute("message", "Somthing Wrong ");
            return "login";
        }
} return "login"; } 
    @GetMapping("/homepage")
    public String homepage()
    {
    	return"home";
    }
    
    @GetMapping("/homecontact")
    public String contactpage(Model model)
    {
    	Login login = new Login();
        model.addAttribute("signIn",login);
    	return"contact";
    }
    @GetMapping("/page")
    public String homepage(Model model)
    {
    	Login login = new Login();
        model.addAttribute("space",login);
    	return"index1";
    }
    @GetMapping("/about")
    public String aboutpage()
    {
    	return "about";
    }
    
	
    }