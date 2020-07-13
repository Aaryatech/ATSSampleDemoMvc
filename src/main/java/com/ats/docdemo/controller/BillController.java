package com.ats.docdemo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ats.docdemo.bill_model.BillDetail;
import com.ats.docdemo.common.CommonUtility;
import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.FormValidation;
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
	public String showAddBillPage(Model model,HttpServletRequest req,HttpServletResponse res) {

		//check for session and access rights code.
		HttpSession session=req.getSession();
		
		tempBillDetailList=new ArrayList<BillDetail>();
		
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
	
	List<BillDetail> tempBillDetailList=null;
	
	
	
	//Author-Sachin Handge
	//Created On-13-07-2020
	//Modified By-Sachin Handge
	//Modified On-13-07-2020
	//Desc Temporarily add bills in List<BillDetail>  List and return
	
	@RequestMapping(value = "/addBillDetail", method = RequestMethod.GET)
	public @ResponseBody Object addBillDetail(HttpServletRequest req,HttpServletResponse res) {
		Info info=new Info();
		try {
			info.setIsSessionAlive(1);
			HttpSession session=req.getSession();
			if(session.isNew()) {
				info.setMsg("Session Timed Out !");
				info.setIsSessionAlive(0);
				info.setError(true);
				return info;
			}
			
		int buttonValue=0; 
		Integer key=0;
		
		try {
			buttonValue=Integer.parseInt(req.getParameter("buttonValue"));
		    key=Integer.parseInt(req.getParameter("key"));
		}catch (Exception e) {
			buttonValue=0;
		}
		
		if(buttonValue==1) {
			
			//Its Add/Edit Operation
			String workDesc=req.getParameter("desc");
			String rate=req.getParameter("rate");
			String qty=req.getParameter("qty");
			String itemTotal=req.getParameter("itemTotal");
			
			Boolean isError = false;

			// Checking Server Side validation- for user input fields.

			if (FormValidation.Validaton(workDesc, "") == true) {
				isError = true;
			}
			if (FormValidation.Validaton(rate, "") == true) {
				isError = true;
			}
			if (FormValidation.Validaton(String.valueOf(qty), "") == true) {
				isError = true;
			}
			if (FormValidation.Validaton(String.valueOf(itemTotal), "") == true) {
				isError = true;
			}
			BillDetail bDetai=new BillDetail();
			if (isError == false) {
				// Every input is valid, set data.
				
				bDetai.setDelStatus(1);
				bDetai.setDetailDttime(CommonUtility.getCurrentYMDDateTime());
				bDetai.setQty(Integer.parseInt(qty));
				bDetai.setRate(Integer.parseInt(rate));
				bDetai.setTotalAmt(Integer.parseInt(itemTotal));
				bDetai.setWorkDesc(workDesc);
				
			if(key.equals(0)) {
				//Its new Record to add
				tempBillDetailList.add(bDetai);
				info.setMsg("Success : Record added!");
				info.setError(false);
				
			}else {
				//Its edit Record in existing list
				tempBillDetailList.set(key, bDetai);
				info.setMsg("Success : Record saved!");
				info.setError(false);
				
			}
			
		}else {
			info.setMsg("Error : Ivalid input value(s)");
			info.setError(true);
			
		}
		
		}else {
			//Its Delete Operation
			tempBillDetailList.remove((int) key);
			info.setMsg("Success : Record deleted!");
			info.setError(false);
		}
		
		info.setResponseObject1(CommonUtility.toJSONString(tempBillDetailList));
		
	}catch (Exception e) {
		e.printStackTrace();
		info.setMsg("Exception Occured");
		info.setError(true);
	}
		return info;
	}
	
}
