package com.chainsys.realestatemanagement.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chainsys.realestatemanagement.dto.AssetAndPaymentDTO;
import com.chainsys.realestatemanagement.model.Assest;
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

	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/Images";

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Assest theAssest = new Assest();
		model.addAttribute("addassest", theAssest);
		return "add-addland-form";
	}

	@PostMapping("addasset")
	public String addNewLand(@ModelAttribute("addasset") Assest theassest, Model model,
			@RequestParam("assetImage") MultipartFile file, @RequestParam("imgName") String imgName)
			throws IOException {

		theassest.setAddress(theassest.getAddress());
		theassest.setApprovedType(theassest.getApprovedType());
		theassest.setAssestType(theassest.getAssestType());
		theassest.setAssetdate(theassest.getAssetdate());
		theassest.setBreadth(theassest.getBreadth());
		theassest.setContactNumber(theassest.getContactNumber());
		theassest.setFacing(theassest.getFacing());
		theassest.setId(theassest.getId());
		theassest.setLength(theassest.getLength());
		theassest.setLocation(theassest.getLocation());
		theassest.setPattaNumber(theassest.getPattaNumber());
		theassest.setPrice(theassest.getPrice());
		theassest.setSquareFeet(theassest.getSquareFeet());
		theassest.setStatus(theassest.getStatus());
		theassest.setUsersId(theassest.getUsersId());
		theassest.setSurveyNumber(theassest.getSurveyNumber());
		String imageUUID;
		if (!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
			Files.write(fileAndPathName, file.getBytes());
		} else {
			imageUUID = imgName;
		}
		theassest.setImage(imageUUID);
		assestService.save(theassest);
		if (theassest.getAssestType().equals("PG")) {
			return "redirect:/guest/pgform?id=" + theassest.getId();
		} else if (theassest.getAssestType().equals("Apartment")) {
			return "redirect:/appartments/appartmentsform?id=" + theassest.getId();
		} else
			return "redirect:/assest/landlist";

	}

	@GetMapping("/updateform")
	public String updateLand(@RequestParam("id") int id, Model model) {
		Assest theAssest = assestService.findById(id);
		model.addAttribute("updateland", theAssest);
		return "update-lands-form";
	}

	@PostMapping("updateland")
	public String updateAssest(@ModelAttribute("updateland") Assest theAssest) {
		assestService.save(theAssest);

		return "redirect:/assest/landlist";
	}

	@GetMapping("/deleteland")
	public String deleteland(@RequestParam("id") int id, @RequestParam("assestType") String assestType) {
		if ("land".equalsIgnoreCase(assestType)) {
			assestService.deleteById(id);
		} else if ("pg".equalsIgnoreCase(assestType)) {
			pgService.deleteById(id);
			assestService.deleteById(id);
		} else if ("apartment".equalsIgnoreCase(assestType)) {
			apptService.deleteById(id);
			assestService.deleteById(id);
		}

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
	public String getAssetAndPayments(@RequestParam("id") int id, Model model) {
		AssetAndPaymentDTO dto = assestService.getAssetAndPayments(id);
		model.addAttribute("getassetpayments", dto.getAssest());
		model.addAttribute("getpayments", dto.getPayments());
		return "list-asset-and-payments";

	}

	@GetMapping("/location")

	public String getByLocation(@RequestParam("location") String location, Model model) {
		List<Assest> byLocation = assestService.findByLocation(location);
		model.addAttribute("allproperty", byLocation);
		return "list-location";
	}

	@GetMapping("/userid")

	public String getByUserId(@RequestParam("userid") int usersId, Model model) {
		List<Assest> byuser = assestService.findByusersId(usersId);
		model.addAttribute("alldata", byuser);
		return "list-land";
	}

	@GetMapping("/getAllAsset")
	public String getAllassetDetails(Model model) {
		List<Assest> landlist = assestService.getAssest();
		model.addAttribute("allAsset", landlist);
		return "list-landAdmin";
	}

}
