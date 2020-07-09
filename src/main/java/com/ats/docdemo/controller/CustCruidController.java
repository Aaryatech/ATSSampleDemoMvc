package com.ats.docdemo.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ats.docdemo.AssetCategory;
import com.ats.docdemo.Location;
import com.ats.docdemo.common.CommonUtility;
import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.FormValidation;
import com.ats.docdemo.cust_model.Customer;

//Author-Sachin Handge
//Created On-09-07-2020
//Modified By-Sachin Handge
//Modified On-09-07-2020
//Desc- Demo For Cruid Operation of Customer Master
@Controller
public class CustCruidController {

	// Author-Sachin Handge
	// Created On-09-07-2020
	// Modified By-Sachin Handge
	// Modified On-09-07-2020
	// Desc- Mapping to show Add Customer page to user

	@RequestMapping(value = "/showAddCustomerPage", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) {

		/*
		 * HttpSession session = request.getSession(); ModelAndView model = null;
		 * List<AccessRightModule> newModuleList = (List<AccessRightModule>)
		 * session.getAttribute("moduleJsonList");
		 * 
		 * Info view = AcessController.checkAccess("showAddCustomerPage",
		 * "showAddCustomerPage", 1, 0, 0, 0, newModuleList);
		 * 
		 * if (view.isError() == true) {
		 * 
		 * model = new ModelAndView("accessDenied");
		 * 
		 * } else { //Actual code }
		 */

		AssetCategory[] assetArr = Constants.getRestTemplate().getForObject(Constants.url1 + "/getAllAssetCategory",
				AssetCategory[].class);
		List<AssetCategory> assetCatList = new ArrayList<AssetCategory>(Arrays.asList(assetArr));
		System.err.println("cat List " + assetCatList.toString());

		model.addAttribute("catId", 28);
		model.addAttribute("assetCatList", assetCatList);

		MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
		map.add("companyId", 1);
		Location[] location = Constants.getRestTemplate().postForObject(Constants.url1 + "/getLocationList", map,
				Location[].class);

		List<Location> locationList = new ArrayList<Location>(Arrays.asList(location));
		model.addAttribute("locationIds", "5,9,2,7");
		model.addAttribute("locationList", locationList);
		return "cust/cust_add";
		// return "dataTableDemo";
	}

	@RequestMapping(value = "/submitCustAddForm", method = RequestMethod.POST)
	public String submitCustAddForm(Model model, HttpServletRequest request, HttpServletResponse response) {

		System.err.println("cust name  " + CommonUtility.capitalizeWord(request.getParameter("cust_name")));

		int custId = 0;
		String custName = request.getParameter("cust_name");
		String custMob = request.getParameter("cust_mob");
		String remark = request.getParameter("cust_remark");
		int creditDays = Integer.parseInt(request.getParameter("cred_days"));

		try {
			custId = Integer.parseInt(request.getParameter("custId"));
		} catch (Exception e) {
			custId = 0;
		}

		Boolean isError = false;

		// Checking Server Side validation- for user input fields.

		if (FormValidation.Validaton(custName, "") == true) {
			isError = true;
		}
		if (FormValidation.Validaton(custMob, "mobile") == true) {
			isError = true;
		}
		if (FormValidation.Validaton(String.valueOf(creditDays), "") == true) {
			isError = true;
		}
		if (FormValidation.Validaton(String.valueOf(custId), "") == true) {
			isError = true;
		}

		if (isError == false) {
			// Every input is valid, set data and make call to web service.

			Customer cust = new Customer();

			cust.setCustId(custId);
			cust.setCreditDays(creditDays);
			cust.setCustMob(custMob);
			cust.setCustName(CommonUtility.capitalizeWord(custName));
			cust.setDelStatus(1);
			cust.setExInt1(1);
			cust.setExVar1("NA");
			cust.setIsActive(1);
			cust.setMakerDttime(CommonUtility.getCurrentYMDDateTime());
			cust.setMakerUserId(1);// take from session variable
			
			
			Object saveCustRes = Constants.getRestTemplate().postForObject(Constants.url + "/saveCustomerMaster", cust,
					Object.class);
			
			System.err.println("res " +CommonUtility.toJSONString(saveCustRes));
			
			Object custList = Constants.getRestTemplate().getForObject(Constants.url + "/getAllCustList",
					Object.class);
			
			System.err.println("custList " +CommonUtility.toJSONString(custList));
		} else {
              //Show Entered data as it is on page if some server validation failed

			Customer cust = new Customer();

			cust.setCustId(custId);
			cust.setCreditDays(creditDays);
			cust.setCustMob(custMob);
			cust.setCustName(custName);

			model.addAttribute("cust", cust);
		}

		// return "cust/cust_add";

		return "redirect:/showAddCustomerPage";

	}

}
