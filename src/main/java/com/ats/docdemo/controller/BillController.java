package com.ats.docdemo.controller;

import java.io.IOException;
import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ats.docdemo.common.CommonUtility;
import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.Info;
import com.ats.docdemo.cust_model.Customer;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class BillController {
	
	
	//showAddBillPage
	
	@RequestMapping(value = "/showAddBillPage", method = RequestMethod.GET)
	public String showAddBillPage(Locale locale, Model model) {

		//return "bill/addBill";
		
		
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
		return "bill/add_new_bill";
	}
}
