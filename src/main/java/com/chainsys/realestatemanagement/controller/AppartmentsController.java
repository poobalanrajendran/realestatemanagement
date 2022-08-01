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

import com.chainsys.realestatemanagement.pojo.Appartments;
import com.chainsys.realestatemanagement.service.AppartmentsService;

@Controller
@RequestMapping("/appartments")
public class AppartmentsController {
	@Autowired
	AppartmentsService appartmentsservice;
	@GetMapping("/appartmentsform")
	public String showAddform(Model model)
	{
	Appartments theappart=new Appartments();
	model.addAttribute("addapparts", theappart);
	return "add-addappart-form";
	}
	@PostMapping("addappart")
	public String addNewappart(@ModelAttribute("addapparts") Appartments theappart)
	{
		appartmentsservice.save(theappart);
	return "redirect:/appartments/appartmentslist";
}
//@GetMapping("/updateform")
//public String updateapparts(@RequestParam("id") int id, Model model)
//{
//	Appartments theappart=appartservice.findById(id);
//	model.addAttribute("updateland",theappart);
//	return "update-appartment-form";
//}
//@PostMapping("updateappart")
//public String updateappart(@ModelAttribute("updateland") Appartments theappart)
//{
//	appartservice.save(theappart);
//	return"redirect:/appartments/appartmentslist";
//}
//@GetMapping("/deleteland")
//public String deleteapp(@RequestParam("id")int id)
//{
//	appartservice.deleteById(id);
//	return "redirect:/appartments/appartmentslist";
//}
//@GetMapping("/findappartbyid")
//public String findusersById(@RequestParam("appartid")int id,Model model)
//{
//	Appartments theappart=appartservice.findById(id);
//	model.addAttribute("findappartid",theappart);
//	return "find-appart-id-form";
//}
@GetMapping("/appartmentslist")
public String getAllusers(Model model) {
	List<Appartments>appartlist=appartmentsservice.getappart();
	model.addAttribute("allapparts", appartlist);
	return "list-appart";
}

}