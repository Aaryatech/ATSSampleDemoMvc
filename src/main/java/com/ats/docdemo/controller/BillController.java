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
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ats.docdemo.CheckUserInterceptor;
import com.ats.docdemo.bill_model.BillDetail;
import com.ats.docdemo.bill_model.BillHeader;
import com.ats.docdemo.bill_model.Setting;
import com.ats.docdemo.common.CommonUtility;
import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.FormValidation;
import com.ats.docdemo.common.Info;
import com.ats.docdemo.cust_model.Customer;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

@Controller
public class BillController {

	// showAddBillPage

	@RequestMapping(value = "/showAddBillPage", method = RequestMethod.GET)
	public String showAddBillPage(Model model, HttpServletRequest req, HttpServletResponse res) {

		// check for session and access rights code.
		HttpSession session = req.getSession();

		tempBillDetailList = new ArrayList<BillDetail>();

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

	List<BillDetail> tempBillDetailList = null;

	// Author-Sachin Handge
	// Created On-13-07-2020
	// Modified By-Sachin Handge
	// Modified On-13-07-2020
	// Desc Temporarily add bills in List<BillDetail> List and return

	@RequestMapping(value = "/addBillDetail", method = RequestMethod.GET)
	public @ResponseBody Object addBillDetail(HttpServletRequest req, HttpServletResponse res) {
		Info info = new Info();

		try {
			HttpSession session = req.getSession();

			if (session.getAttribute("userObj").equals(null)) {
				System.err.println("in Session Closed");
				info.setIsSessionAlive(0);
				info.setMsg("Session Timed Out !");
				info.setError(true);
				return info;
			} else {
				System.err.println("in Session Open");
				info.setIsSessionAlive(1);
			}

			int buttonValue = 0;
			Integer key = 0;

			try {
				buttonValue = Integer.parseInt(req.getParameter("buttonValue"));
				key = Integer.parseInt(req.getParameter("key"));
			} catch (Exception e) {
				buttonValue = 0;
			}

			if (buttonValue == 1) {

				// Its Add/Edit Operation
				String workDesc = req.getParameter("desc");
				String rate = req.getParameter("rate");
				String qty = req.getParameter("qty");
				String itemTotal = req.getParameter("itemTotal");

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
				BillDetail bDetai = new BillDetail();
				if (isError == false) {
					// Every input is valid, set data.
					bDetai.setBillDetailId(0);
					bDetai.setBillId(0);
					bDetai.setDelStatus(1);
					bDetai.setDetailDttime(CommonUtility.getCurrentYMDDateTime());
					bDetai.setQty(Integer.parseInt(qty));
					bDetai.setRate(Integer.parseInt(rate));
					bDetai.setTotalAmt(Integer.parseInt(itemTotal));
					bDetai.setWorkDesc(workDesc);
					int isEdit = Integer.parseInt(req.getParameter("isEdit"));
					if (key.equals(0) && isEdit < 1) {
						// Its new Record to add
						tempBillDetailList.add(bDetai);
						info.setMsg("Success : Record added!");
						info.setError(false);

					} else {
						// Its edit Record in existing list
						tempBillDetailList.set((int) key, bDetai);
						info.setMsg("Success : Record saved!");
						info.setError(false);

					}

				} else {
					info.setMsg("Error : Ivalid input value(s)");
					info.setError(true);

				}

			} else {
				// Its Delete Operation
				tempBillDetailList.remove((int) key);
				info.setMsg("Success : Record deleted!");
				info.setError(false);
			}

			info.setResponseObject1(CommonUtility.toJSONString(tempBillDetailList));

		} catch (Exception e) {
			e.printStackTrace();
			info.setMsg("Exception Occured");
			info.setError(true);
		}
		return info;
	}

	@RequestMapping(value = "/getBillDetailForEdit", method = RequestMethod.GET)
	public @ResponseBody Object getBillDetailForEdit(HttpServletRequest req, HttpServletResponse res) {
		Info info = new Info();
		int key = 0;
		try {

			key = Integer.parseInt(req.getParameter("key"));
			info.setResponseObject1(CommonUtility.toJSONString(tempBillDetailList.get(key)));

		} catch (Exception e) {
			e.printStackTrace();
			info.setMsg("Exception Occured");
			info.setError(true);

		}

		return info;

	}

	@RequestMapping(value = "/submitAddBillPage", method = RequestMethod.POST)
	public String submitAddBillPage(Model model, HttpServletRequest req, HttpServletResponse res) {

		// Check for session
		// Check for session Key
		// Check for access control

		Info reqBody = new Info();
		String custId = req.getParameter("cust_id");
		String billDate = req.getParameter("bill_date");

		Boolean isError = false;

		// Checking Server Side validation- for user input fields.

		if (FormValidation.Validaton(custId, "") == true) {
			isError = true;
		}
		if (FormValidation.Validaton(billDate, "") == true) {
			isError = true;
		}

		if (isError == false) {

			MultiValueMap<String, Object> map = null;
			map = new LinkedMultiValueMap<>();
			map.add("limitKey", "invoiceNoValue");
			Setting settingValue = Constants.getRestTemplate().postForObject(Constants.url1 + "/getSettingByKey", map,
					Setting.class);

			map = new LinkedMultiValueMap<>();
			map.add("limitKey", "invoiceNoLength");

			Setting strLength = Constants.getRestTemplate().postForObject(Constants.url1 + "/getSettingByKey", map,
					Setting.class);

			map = new LinkedMultiValueMap<>();
			map.add("limitKey", "invoicePrefix");
			Setting astCodeStr = Constants.getRestTemplate().postForObject(Constants.url1 + "/getSettingByKey", map,
					Setting.class);
			String invoiceNo = null;

			int strLnth = Integer.parseInt(strLength.getValue());
			int strVal = Integer.parseInt(settingValue.getValue());
			invoiceNo = astCodeStr.getValue() + "_" + String.format("%0" + strLnth + "d", strVal);

			BillHeader header = new BillHeader();
			header.setBillDate(billDate);
			header.setBillDttime(CommonUtility.getCurrentYMDDateTime());

			header.setBillUpdateDttime(CommonUtility.getCurrentYMDDateTime());
			header.setCustId(Integer.parseInt(custId));
			header.setDelStatus(1);
			header.setExVar1("-");
			header.setInvoiceNo(invoiceNo);
			header.setMakerUserId(1);// Accept from session
			header.setMakerDttime(CommonUtility.getCurrentYMDDateTime());
			header.setBillId(0);
			header.setExInt1(0);
			int billAmt = 0;

			for (int i = 0; i < tempBillDetailList.size(); i++) {
				billAmt = billAmt + tempBillDetailList.get(i).getTotalAmt();

			}

			header.setBillAmt(billAmt);
			header.setBillDetailList(tempBillDetailList);
			reqBody.setResponseObject1(CommonUtility.toJSONString(header));
			reqBody.setResponseObject2(CommonUtility.toJSONString(tempBillDetailList));

			Object saveBillHeadDetailRes = Constants.getRestTemplate()
					.postForObject(Constants.url + "/saveBillHeadDetail", header, Object.class);
		}

		return "redirect:/addBillDetail";

	}

	@RequestMapping(value = "/searchBills", method = RequestMethod.GET)
	public String searchBills(Model model, HttpServletRequest req, HttpServletResponse res) {

		// check for session and access rights code.
		HttpSession session = req.getSession();

		Object custListObj = Constants.getRestTemplate().getForObject(Constants.url + "/getAllCustList", Object.class);

		ObjectMapper objMapper = new ObjectMapper();

		Info info = objMapper.convertValue(custListObj, Info.class);

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

		model.addAttribute("custList", custList);
		MultiValueMap<String, Object> map = null;

		map = new LinkedMultiValueMap<>();
		int custId = 0;
		try {
			String daterange = req.getParameter("daterange");

			String[] fromDate = daterange.split(" to ");

			map.add("fromDate", CommonUtility.convertToYMD(fromDate[0]));
			map.add("toDate", CommonUtility.convertToYMD(fromDate[1]));

			model.addAttribute("fromDate", fromDate[0]);
			model.addAttribute("toDate", fromDate[1]);

			model.addAttribute("daterange", daterange);

			model.addAttribute("custId", custId);
			try {
				custId = Integer.parseInt(req.getParameter("cust_Id"));
			} catch (Exception e) {
				custId = 0;
			}

			map.add("custId", custId);
			System.err.println("map " + map);

			Object billListObj = Constants.getRestTemplate().postForObject(Constants.url + "/getBillList", map,
					Object.class);

			objMapper = new ObjectMapper();

			Info billInfo = objMapper.convertValue(billListObj, Info.class);
			System.err.println("bill Info " + billInfo.getResponseObject1());
			List<BillHeader> billList = new ArrayList<BillHeader>();
			billList = objMapper.readValue(billInfo.getResponseObject1(), new TypeReference<List<BillHeader>>() {
			});

			model.addAttribute("billList", billList);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("custId", custId);
		}

		return "bill/bill_list_page";

	}

	@RequestMapping(value = "/checkForSession", method = RequestMethod.GET)
	public @ResponseBody Object checkForSession(HttpServletRequest req, HttpServletResponse res) {
		Info info = new Info();
		try {
			HttpSession session = req.getSession();
			Object obj = null;
			try {
				obj = session.getAttribute("userObj");
			} catch (Exception e) {
				obj = null;
			}
			if (obj==null) {
				info.setError(true);
				info.setIsSessionAlive(0);
				info.setMsg("Session Expired !! Login again");
			}
			else {
				info.setIsSessionAlive(1);
				info.setMsg("Session Alive");
				info.setError(false);
			}

		} catch (Exception e) {
			e.printStackTrace();
			info.setMsg("Session Expired !! Login again");
			info.setError(true);
		}

		return info;
	}

}
