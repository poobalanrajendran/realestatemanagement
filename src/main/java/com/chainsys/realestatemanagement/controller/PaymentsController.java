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

import com.chainsys.realestatemanagement.model.Assest;
//import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.Payments;
import com.chainsys.realestatemanagement.service.AssestService;
import com.chainsys.realestatemanagement.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentsController {
	@Autowired
	PaymentService paymentService;
	@Autowired
	AssestService assestService;
	
	@GetMapping("/paymentform")
	public String showAddForm(Model model)
	{
		Payments payAmount =new Payments();
		model.addAttribute("addpay",payAmount);
		
		return "add-addpayment-form";
	}
	
	
@PostMapping("addpaymentform")
public String addNewLand(@ModelAttribute("addpay") Payments thePay,Model model)
{
	System.out.println("asset payment details......");
	paymentService.save(thePay);
	System.out.println("asset buyer......"+thePay.getId());
	Assest asset =null;// = new Assest();
	asset = assestService.findById(thePay.getId());
	asset.setStatus("Sold");
	assestService.save(asset);
	System.out.println("asset id......"+asset.getId());
	
	//
	/*Payments obj=new Payments();
	obj.setInvoice(obj.getInvoice());
	obj.setBuyerAssestid(obj.getBuyerAssestid());
	obj.setId(obj.getId());
	obj.setAmount(obj.getAmount());
	obj.setAssetdate(obj.getAssetdate());
	obj.setCardNumber(obj.getCardNumber());
	obj.setCvvNumber(obj.getCvvNumber());
	obj.setNameHolder(obj.getNameHolder());
	obj.setExpireMonth(obj.getExpireMonth());
	obj.setExpireYear(obj.getExpireYear());
	paymentService.save(obj);*/
	
	return "sucessPayment";
}
@GetMapping("/updateform")
public String updatepayment(@RequestParam("id") long id, Model model) {
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
public String deleteland(@RequestParam("id") long id) {
	paymentService.deleteById(id);
	return  "redirect:/payment/paymentlist";
}

@GetMapping("/findpaymentbyid")
public String findpayById(@RequestParam("id")long id,Model model)
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

@GetMapping("/transactionDetails")
public String getDetails(@RequestParam("userid")int userid,Model model)
{
	List<Payments> thePay=paymentService.getTransactionDetails(userid);
model.addAttribute("allpayment",thePay);
return "list-payment"; }

@GetMapping("/admindeletepayment")
public String deletepayment(@RequestParam("id") long id) {
	paymentService.deleteById(id);
	return  "list-landAdmin";
}
@GetMapping("/onlinepayment")

	public String payment()
	{
	return"OnlinePayment";
}




}


