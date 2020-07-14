package com.ats.docdemo.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
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
import com.ats.docdemo.common.Info;
import com.ats.docdemo.cust_model.Customer;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectReader;

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

		Object custListObj = Constants.getRestTemplate().getForObject(Constants.url + "/getAllCustList", Object.class);

		System.err.println("custList " + CommonUtility.toJSONString(custListObj));

		ObjectMapper objMapper = new ObjectMapper();

		Info info = objMapper.convertValue(custListObj, Info.class);
		System.err.println("info==" + info.toString());

		List<Customer> custList = null;
		try {
			custList = objMapper.readValue(info.getResponseObject1(), new TypeReference<List<Customer>>() {
			});
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.err.println(" Object custList2 ==" + custList.toString());

		model.addAttribute("custList", custList);
		HttpSession session = request.getSession();
		session.setAttribute("successMsg", "Nice you done it");
		return "cust/cust_add";
		// return "dataTableDemo";
	}

	@RequestMapping(value = "/submitCustAddForm", method = RequestMethod.POST)
	public String submitCustAddForm(Model model, HttpServletRequest request, HttpServletResponse response) {

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

			System.err.println("res " + CommonUtility.toJSONString(saveCustRes));

			Object custListObj = Constants.getRestTemplate().getForObject(Constants.url + "/getAllCustList",
					Object.class);

			System.err.println("custList " + CommonUtility.toJSONString(custListObj));

			ObjectMapper objMapper = new ObjectMapper();

			Info info = objMapper.convertValue(custListObj, Info.class);
			System.err.println("info==" + info.toString());

			List<Customer> custList = null;
			try {
				custList = objMapper.readValue(info.getResponseObject1(), new TypeReference<List<Customer>>() {
				});
			} catch (JsonParseException e) {
				e.printStackTrace();
			} catch (JsonMappingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			System.err.println(" Object custList2 ==" + custList.toString());

			model.addAttribute("custList", custList);

			JsonNode s = objMapper.valueToTree(custListObj);
			System.err.println("JsonNode s = " + s.toString());

			model.addAttribute("cust", cust); // tokenRes = mapperObj.readValue(tokRes.getBody(), GetAuthToken.class);

		} else {
			// Show Entered data as it is on page if some server validation failed

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

	@RequestMapping(value = "/deleteCustomerByCustId", method = RequestMethod.GET)
	public String deleteCustomerByCustId(Model model, HttpServletRequest request, HttpServletResponse response) {
	System.err.println("Hi");
		//	HttpSession session = request.getSession();
		/*
		 * ModelAndView model = null; List<AccessRightModule> newModuleList =
		 * (List<AccessRightModule>) session.getAttribute("moduleJsonList");
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

		int custId = 0;
		try {
			custId = Integer.parseInt(request.getParameter("custId"));
		} catch (Exception e) {
			custId = 0;
		}
		MultiValueMap<String, Object> map = null;

		map = new LinkedMultiValueMap<>();

		map.add("custId", custId);
		map.add("makerUserId", 1); // Take from Session.
		map.add("makerDttime", CommonUtility.getCurrentYMDDateTime());

		Object deleteResponse = Constants.getRestTemplate().postForObject(Constants.url + "/deleteCustomerByCustId",
				map, Object.class);

		ObjectMapper objMapper = new ObjectMapper();

		Info info = objMapper.convertValue(deleteResponse, Info.class);

		if (info.isError() == false) {
			//session.setAttribute("successMsg", info.getMsg());
		} else {
			//session.setAttribute("errorMsg", info.getMsg());
		}

		return "redirect:/showAddCustomerPage";
	}

	@RequestMapping(value = "/showEditCustomerPage", method = RequestMethod.GET)
	public ModelAndView showEditCustomerPage(  HttpServletRequest request, HttpServletResponse response) {
		//HttpSession session = request.getSession();
		ModelAndView model = null;
		try {
			/*
			 * ModelAndView model = null; List<AccessRightModule> newModuleList =
			 * (List<AccessRightModule>) session.getAttribute("moduleJsonList");
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
			model = new ModelAndView("cust/cust_add");
			int custId = 0;
			try {
				custId = Integer.parseInt(request.getParameter("custId"));
			} catch (Exception e) {
				custId = 0;
			}
			MultiValueMap<String, Object> map = null;

			map = new LinkedMultiValueMap<>();

			map.add("custId", custId);

			Object deleteResponse = Constants.getRestTemplate().postForObject(Constants.url + "/getCustomerByCustId",
					map, Object.class);

			ObjectMapper objMapper = new ObjectMapper();

			Info info = objMapper.convertValue(deleteResponse, Info.class);

			if (info.isError() == false) {
				Customer cust = objMapper.readValue(info.getResponseObject1(), Customer.class);
				System.err.println("Cust found  " + cust);
				model.addObject("cust", cust);
			} else {

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return model;
	}
	
	//activeDeactiveCust
	
	@RequestMapping(value = "/activeDeactiveCust", method = RequestMethod.GET)
	public String activeDeactiveCust(Model model, HttpServletRequest request, HttpServletResponse response) {
	System.err.println("Hi activeDeactiveCust ");
		//	HttpSession session = request.getSession();
		/*
		 * ModelAndView model = null; List<AccessRightModule> newModuleList =
		 * (List<AccessRightModule>) session.getAttribute("moduleJsonList");
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

		int custId = 0;
		try {
			custId = Integer.parseInt(request.getParameter("custId"));
		} catch (Exception e) {
			custId = 0;
		}
		

		int isActive = 0;
		try {
			isActive = Integer.parseInt(request.getParameter("isActive"));
		} catch (Exception e) {
			isActive = 0;
		}
		
		MultiValueMap<String, Object> map = null;

		map = new LinkedMultiValueMap<>();

		map.add("custId", custId);
		map.add("makerUserId", 1); // Take from Session.
		map.add("makerDttime", CommonUtility.getCurrentYMDDateTime());
		map.add("isActive", isActive);
		Object actDeactRes = Constants.getRestTemplate().postForObject(Constants.url + "/activeInActiveCustomerById",
				map, Object.class);

		ObjectMapper objMapper = new ObjectMapper();

		Info info = objMapper.convertValue(actDeactRes, Info.class);

		if (info.isError() == false) {
			//session.setAttribute("successMsg", info.getMsg());
		} else {
			//session.setAttribute("errorMsg", info.getMsg());
		}

		return "redirect:/showAddCustomerPage";
	}
}
