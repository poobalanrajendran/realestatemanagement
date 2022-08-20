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

import com.chainsys.realestatemanagement.model.Appartments;
import com.chainsys.realestatemanagement.service.AppartmentsService;

@Controller
@RequestMapping("/appartments")
public class AppartmentsController {
	@Autowired
	AppartmentsService appartmentsService;
	
	@GetMapping("/appartmentsform")
	
	public String showAddform(@RequestParam("id")int appartid, Model model)
	{
	Appartments theappart=new Appartments();
	theappart.setAppartmentId(appartid);
	model.addAttribute("addapparts", theappart);
	return "add-addappart-form";
	
	}
	@PostMapping("addappart")
	public String addNewappart(@ModelAttribute("addapparts") Appartments theappart)
	{
		appartmentsService.save(theappart);
		return"index1";
}
@GetMapping("/updateform")
public String updateapparts(@RequestParam("id") int id, Model model)
{
	Appartments theappart=appartmentsService.findById(id);
	model.addAttribute("updateland",theappart);
	return "update-appartment-form";
}
@PostMapping("updateappart")
public String updateappart(@ModelAttribute("updateland") Appartments theappart)
{
	appartmentsService.save(theappart);
	return"redirect:/appartments/appartmentslist";
}
@GetMapping("/deleteland")
public String deleteapp(@RequestParam("id")int id)
{
	appartmentsService.deleteById(id);
	return "redirect:/appartments/appartmentslist";
}
@GetMapping("/findappartbyid")
public String findusersById(@RequestParam("appartid")int id,Model model)
{
	Appartments theappart=appartmentsService.findById(id);
	model.addAttribute("findappartid",theappart);
	return "find-appart-id-form";
}
@GetMapping("/appartmentslist")
public String getAllusers(Model model) {
	List<Appartments>appartlist=appartmentsService.getappart();
	model.addAttribute("allapparts", appartlist);
	return "list-appart";
}

@GetMapping("/adminappartmentdelete")
public String deleteappart(@RequestParam("id")int id)
{
	appartmentsService.deleteById(id);
	return "list-landAdmin";
}
}