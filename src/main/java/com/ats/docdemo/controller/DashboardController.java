package com.ats.docdemo.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {

	//showDashboardPage
	
		@RequestMapping(value = "/showDashboardPage", method = RequestMethod.GET)
		public String showAddBillPage(Locale locale, Model model) {

			return "dashboard/dashboard";
			//return "dataTableDemo";
		}
	
}
