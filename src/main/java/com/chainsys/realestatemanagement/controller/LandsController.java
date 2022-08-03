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

import com.chainsys.realestatemanagement.pojo.Lands;
import com.chainsys.realestatemanagement.pojo.Users;
import com.chainsys.realestatemanagement.service.LandsService;

@Controller
@RequestMapping("/lands")
public class LandsController {
	@Autowired
	LandsService landsService;
	
	@GetMapping("/landsform")
	public String showAddForm(Model model)
	{
		Lands theland =new Lands();
		model.addAttribute("addland", theland);
		return "add-addland-form";
	}
@PostMapping("addlands")

public String addNewLand(@ModelAttribute("addland") Lands theland)
{
	landsService.save(theland);
	return "redirect:/lands/landlist";
}
@GetMapping("/updateform")
public String updateLand(@RequestParam("id") int id, Model model) {
	Lands theland = landsService.findById(id);
	model.addAttribute("updateland", theland);
	return "update-lands-form";
}
@PostMapping("updateland")
public String updateland(@ModelAttribute("updateland") Lands theland) {
	landsService.save(theland);
	return "redirect:/lands/landlist";
}
@GetMapping("/deleteland")
public String deleteland(@RequestParam("id") int id) {
	landsService.deleteById(id);
	return "redirect:/lands/landlist";
}

@GetMapping("/findusersbyid")
public String finduserById(@RequestParam("landid")int id,Model model)
{
Lands theland=landsService.findById(id);
model.addAttribute("findlandid",theland);
return "find-land-id-form"; }

@GetMapping("/landlist")

public String getAlluser(Model model) {
	List<Lands> landlist = landsService.getland();
	model.addAttribute("alllands", landlist);
	return "list-land";
}
}
