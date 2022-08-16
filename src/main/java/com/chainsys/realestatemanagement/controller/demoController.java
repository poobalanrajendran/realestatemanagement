package com.chainsys.realestatemanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class demoController {
	
	@GetMapping("/index")
	
	public String demo()
	{
		
		return "index1";
	}

}
