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
import com.chainsys.realestatemanagement.model.PayingGuest;
import com.chainsys.realestatemanagement.service.PayingGuestService;

@Controller
@RequestMapping("/guest")
public class PayingGuestController {

	@Autowired
	PayingGuestService payingguestService;

	@GetMapping("/pgform")
	public String showAddform(@RequestParam("id")int assetid,Model model ) {
		PayingGuest theguest = new PayingGuest();
		theguest.setPgId(assetid);
		model.addAttribute("addpg", theguest);
		return "add-addpayingguest-form";
	}

	@PostMapping("/addpguest")
	public String addNewappart(@ModelAttribute("addpg") PayingGuest thepgguest) {
		payingguestService.save(thepgguest);
		/* return "redirect:/guest/payingguestlist"; */
		return "index1";
	}

	@GetMapping("/updateform")
	public String updatepg(@RequestParam("id") int id, Model model) {
		PayingGuest thepg = payingguestService.findById(id);
		model.addAttribute("updateland", thepg);
		return "update-payingguest-form";
	}

	@PostMapping("updateguest")
	public String updatepg(@ModelAttribute("updateland") PayingGuest thepg) {
		payingguestService.save(thepg);
		return "redirect:/guest/payingguestlist";
	}

	@GetMapping("/deleteland")
	public String deleteapp(@RequestParam("id") int id) {
		payingguestService.deleteById(id);
		return "redirect:/guest/payingguestlist";
	}

	@GetMapping("/findappartbyid")
	public String findusersById(@RequestParam("id") int id, Model model) {
		PayingGuest thepg = payingguestService.findById(id);
		model.addAttribute("findguestId", thepg);
		return "find-pgguest-id-form";
	}

	@GetMapping("/payingguestlist")
	public String getAllusers(Model model) {
		List<PayingGuest> appartlist = payingguestService.getpaying();
		model.addAttribute("allpg", appartlist);
		return "list-pgguest";
	}

	@GetMapping("/admindeletepg")
	public String deletepg(@RequestParam("id") int id) {
		payingguestService.deleteById(id);
		return "list-landAdmin";
	}
}
