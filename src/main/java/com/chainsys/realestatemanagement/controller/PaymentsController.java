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
import com.chainsys.realestatemanagement.pojo.Payments;
import com.chainsys.realestatemanagement.service.LandsService;
import com.chainsys.realestatemanagement.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentsController {
	@Autowired
	PaymentService paymentService;
	
	@GetMapping("/paymentform")
	public String showAddForm(Model model)
	{
		Payments payAmount =new Payments();
		model.addAttribute("addpay",payAmount);
		
		return "add-addpayment-form";
	}
@PostMapping("addpaymentform")

public String addNewLand(@ModelAttribute("addpay") Payments thePay)
{
	paymentService.save(thePay);
	return "redirect:/payment/paymentlist";
}
@GetMapping("/updateform")
public String updatepayment(@RequestParam("id") int id, Model model) {
	Payments thePay = paymentService.findById(id);
	model.addAttribute("updateland", thePay);
	return "update-payments-form";
}
@PostMapping("updatepay")
public String updatepay(@ModelAttribute("updatepay") Payments pay) {
	paymentService.save(pay);
	return "redirect:/payment/paymentlist";
}
@GetMapping("/deleteland")
public String deleteland(@RequestParam("id") int id) {
	paymentService.deleteById(id);
	return  "redirect:/payment/paymentlist";
}

@GetMapping("/findpaymentbyid")
public String findpayById(@RequestParam("id")int id,Model model)
{
	Payments thePay=paymentService.findById(id);
model.addAttribute("findpayid",thePay);
return "find-payments-id-form"; }

@GetMapping("/paymentlist")

public String getAllpay(Model model) {
	List<Payments> paymentList = paymentService.getpayment();
	model.addAttribute("allpayment", paymentList);
	return "list-payment";
}
}


