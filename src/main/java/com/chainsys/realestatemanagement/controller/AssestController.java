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

import com.chainsys.realestatemanagement.dao.AppartmentsRepository;
import com.chainsys.realestatemanagement.dao.PayingGuestRepository;
import com.chainsys.realestatemanagement.dto.AssetAndPaymentDTO;
import com.chainsys.realestatemanagement.model.Appartments;
import com.chainsys.realestatemanagement.model.Assest;
import com.chainsys.realestatemanagement.model.AssetPayGuestAppartment;
import com.chainsys.realestatemanagement.model.PayingGuest;
import com.chainsys.realestatemanagement.service.AppartmentsService;
import com.chainsys.realestatemanagement.service.AssestService;
import com.chainsys.realestatemanagement.service.PayingGuestService;

@Controller
@RequestMapping("/assest")
public class AssestController {
	Assest as = new Assest();
	@Autowired
	AssestService assestService;
	@Autowired
	 PayingGuestService pgService;
	@Autowired
	 AppartmentsService apptService;


	@GetMapping("/addform")  
	public String showAddForm(Model model) {
		Assest theAssest = new Assest();
		model.addAttribute("addassest", theAssest);
		return "add-addland-form";
		// if(as.assestType="land")
	}
	
	/*jayakumar
	 * @GetMapping("/addform") public String showAddForm(Model model) {
	 * AssetPayGuestAppartment assestDetails = new AssetPayGuestAppartment();
	 * model.addAttribute("addassest", assestDetails); return "alltable"; //
	 * if(as.assestType="land") }
	 */
	
	@PostMapping("addasset")
	public String addNewLand(@ModelAttribute("addasset") Assest theassest, Model model) {
		assestService.save(theassest);
		if (theassest.getAssestType().equals("pg")) {
			return "redirect:/guest/pgform?id="+theassest.getId();
		} 
		else if(theassest.getAssestType().equals("Appartment"))
		{
			return "redirect:/appartments/appartmentsform?id="+theassest.getId();
		}
		else
			return "redirect:/assest/landlist";

	}
	
	/* jaya kumar
	 * @PostMapping("addasset") public void addNewLand(@ModelAttribute("addasset")
	 * AssetPayGuestAppartment assestDetails, Model model) {
	 * System.out.println("calling sop asset"); Assest theAssest =
	 * this.getAssetDetails(assestDetails); assestService.save(theAssest); if
	 * (theAssest.getAssestType().equals("PG")) { PayingGuest objPG =
	 * AssestController.getPGDetails(assestDetails); pgService.save(objPG); //return
	 * "redirect:/guest/pgform?id="+theAssest.getId(); } else
	 * if(theAssest.getAssestType().equals("Appartment")) { Appartments objAppt=
	 * AssestController.getAppartmentDetails(assestDetails);
	 * apptService.save(objAppt); //return
	 * "redirect:/appartments/appartmentsform?id="+theAssest.getId(); } //else
	 * //return "redirect:/assest/landlist";
	 * 
	 * }
	 * 
	 * 
	 */
	@GetMapping("/updateform")
	public String updateLand(@RequestParam("id") int id, Model model) {
		Assest theAssest = assestService.findById(id);
		model.addAttribute("updateland", theAssest);
		return "update-lands-form";
	}

	@PostMapping("updateland")
	public String updateland(@ModelAttribute("updateland") Assest theAssest) {
		assestService.save(theAssest);
		
		return "redirect:/assest/landlist";
	}

	@GetMapping("/deleteland")
	public String deleteland(@RequestParam("id") int id,@RequestParam("assestType") String assestType) {
		System.out.println(" asset id "+id);
		System.out.println(" assestType "+assestType);
		if("land".equalsIgnoreCase(assestType)) {
			assestService.deleteById(id);
		}else if("pg".equalsIgnoreCase(assestType)) {
			pgService.deleteById(id);
			assestService.deleteById(id);
		}else if("apartment".equalsIgnoreCase(assestType)) {
			apptService.deleteById(id);
			assestService.deleteById(id);
		}
		//assestService.deleteById(id);
		return "redirect:/assest/getAllAsset";
	}

	@GetMapping("/findusersbyid")
	public String findassestById(@RequestParam("landid") int id, Model model) {
		Assest theland = assestService.findById(id);
		model.addAttribute("findlandid", theland);
		return "find-land-id-form";
	}

	@GetMapping("/landlist")

	public String getAllassest(Model model) {
		List<Assest> landlist = assestService.getAssest();
		model.addAttribute("alllands", landlist);
		return "list-land";
	}
	
	@GetMapping("/getassetpayments")
	public String getAssetAndPayments(@RequestParam("id")int id, Model model)
	{
		AssetAndPaymentDTO dto = assestService.getAssetAndPayments(id);
		model.addAttribute("getassetpayments", dto.getAssest());
		model.addAttribute("getpayments",dto.getPayments());
		return "list-asset-and-payments";
		
	}
	
	@GetMapping("/location")

	public String getByLocation(@RequestParam("location")String location, Model model) {
		List<Assest> byLocation = assestService.findByLocation(location);
		model.addAttribute("alllands", byLocation);
		return "list-location";
	}
	
	@GetMapping("/userid")

	public String getByUserId(@RequestParam("userid")int usersId, Model model) {
		List<Assest> byuser = assestService.findByusersId(usersId);
		model.addAttribute("alllands", byuser);
		return "list-land";
	}
	
	@GetMapping("/getAllAsset")
	public String getAllassetDetails(Model model) {
		List<Assest> landlist = assestService.getAssest();
		model.addAttribute("allAsset", landlist);
		return "list-landAdmin";
	}	
	
	/*jaya kumar
	 * public static Assest getAssetDetails(AssetPayGuestAppartment assestDetails) {
	 * Assest obj = new Assest(); obj.setAddress(assestDetails.getAddress());
	 * obj.setApprovedType(assestDetails.getAcNonac());
	 * obj.setAssestType(assestDetails.getAssestType());
	 * obj.setAssetdate(assestDetails.getAssetdate());
	 * obj.setBreadth(assestDetails.getBreadth());
	 * obj.setContactNumber(assestDetails.getContactNumber());
	 * obj.setFacing(assestDetails.getFacing()); obj.setId(assestDetails.getId());
	 * obj.setLength(assestDetails.getLength());
	 * obj.setLocation(assestDetails.getLocation());
	 * obj.setPattaNumber(assestDetails.getPattaNumber());
	 * obj.setPrice(assestDetails.getPrice());
	 * obj.setSquareFeet(assestDetails.getSquareFeet());
	 * obj.setStatus(assestDetails.getStatus());
	 * obj.setUsersId(assestDetails.getUsersId());
	 * obj.setAssetdate(assestDetails.getAssetdate()); return obj; }
	 * 
	 * public static PayingGuest getPGDetails(AssetPayGuestAppartment assestDetails)
	 * { PayingGuest objPG = new PayingGuest();
	 * objPG.setAcNonac(assestDetails.getAcNonac());
	 * objPG.setAdvance(assestDetails.getAdvance());
	 * objPG.setFloor(assestDetails.getFloor());
	 * objPG.setFoodFacility(assestDetails.getFoodFacility());
	 * objPG.setLift(assestDetails.getLift());
	 * objPG.setPgId(assestDetails.getPgId());
	 * objPG.setPgType(assestDetails.getPgType());
	 * objPG.setRent(assestDetails.getRent()); return objPG; } public static
	 * Appartments getAppartmentDetails(AssetPayGuestAppartment assestDetails) {
	 * Appartments objAppt = new Appartments();
	 * objAppt.setAppartmentId(assestDetails.getAppartmentId());
	 * objAppt.setFloor(assestDetails.getFloor());
	 * objAppt.setLift(assestDetails.getLift());
	 * objAppt.setSecurity(assestDetails.getSecurity()); return objAppt; }
	 */
}
