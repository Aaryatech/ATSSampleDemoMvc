package com.ats.docdemo.controller;

import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ats.docdemo.common.Constants;
import com.ats.docdemo.model.QualityIniCountsForGraph;
import com.ats.docdemo.model.QualityIniGraphResponse;

@Controller
public class DashboardController {

	//showDashboardPage
	
		@RequestMapping(value = "/showDashboardPage", method = RequestMethod.GET)
		public String showAddBillPage(Locale locale, Model model) {

			return "dashboard/dashboard";
			//return "dataTableDemo";
		}
		
		
		@RequestMapping(value = "/getDashboardGraph", method = RequestMethod.GET)
		public @ResponseBody QualityIniGraphResponse getDashboardGraph(HttpServletRequest request, HttpServletResponse response) {
			
			
			QualityIniGraphResponse qualityIniGraphResponse = new QualityIniGraphResponse();
			
			
			try {
				 int x=60;
				qualityIniGraphResponse = Constants.getRestTemplate().getForObject(Constants.url2 + "/getAllQualIniGraph1", QualityIniGraphResponse.class);
					 System.err.println("qualityIniGraphResponse " +qualityIniGraphResponse.toString());
					 
					 for(int i=0;i< qualityIniGraphResponse.getNaacRes().size();i++) {
						 
						 qualityIniGraphResponse.getNaacRes().get(i).setCount1(x+RandomUtils.nextInt(50, 70));
						 qualityIniGraphResponse.getNaacRes().get(i).setCount2(x-RandomUtils.nextInt(40, 60));
						 qualityIniGraphResponse.getNaacRes().get(i).setCount3(x+10);
						 
						 x=x+RandomUtils.nextInt(100, 400);
						 
					 }
					 
 for(int i=0;i< qualityIniGraphResponse.getNbaRes().size();i++) {
						 
						 qualityIniGraphResponse.getNbaRes().get(i).setCount1(x+RandomUtils.nextInt(50, 70));
						 qualityIniGraphResponse.getNbaRes().get(i).setCount3(x-RandomUtils.nextInt(40, 60));
						 qualityIniGraphResponse.getNbaRes().get(i).setCount2(x+10);
						 
						 x=x+RandomUtils.nextInt(100, 400);
						 
					 }
 
 for(int i=0;i< qualityIniGraphResponse.getNirfcRes().size();i++) {
	 
	 qualityIniGraphResponse.getNirfcRes().get(i).setCount1(x+RandomUtils.nextInt(30, 120));
	 qualityIniGraphResponse.getNirfcRes().get(i).setCount2(x-RandomUtils.nextInt(20, 25));
	 
	 x=x+RandomUtils.nextInt(100, 400);
	 
 }
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return qualityIniGraphResponse;
		} 
	
}
