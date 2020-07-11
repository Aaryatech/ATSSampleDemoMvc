package com.ats.docdemo.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BillController {
	
	
	//showAddBillPage
	
	@RequestMapping(value = "/showAddBillPage", method = RequestMethod.GET)
	public String showAddBillPage(Locale locale, Model model) {

		return "bill/addBill";
		//return "dataTableDemo";
	}
}
