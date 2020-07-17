package com.ats.docdemo.controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ats.docdemo.User;
import com.ats.docdemo.common.CommonUtility;
import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.Info;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
@Scope("session")
public class ForgotPassController {

	LinkedHashMap<String, String> userOtpMap = new LinkedHashMap<>();
	LinkedHashMap<String, Calendar> userTimeMap = new LinkedHashMap<>();

	@RequestMapping(value = "/showForPassPage", method = RequestMethod.GET)
	public ModelAndView showForPassPage(Model model,HttpServletRequest request,HttpServletResponse response) {
		System.err.println("Hi showForPassPage");
		ModelAndView mav = new ModelAndView("login_pages/login_fpass");
		return mav;
	}
	
	
	@RequestMapping(value = "/checkUserAndSendOtpEmail", method = RequestMethod.POST)
	public String checkUserAndSendOtpEmail(HttpServletRequest request, HttpServletResponse response, Model model) {
		String returnPage = null;
		System.err.println("Hiii  checkUserAndSendOtpEmail  ");
		HttpSession session = request.getSession();

		String token = request.getParameter("token");
		String key = (String) session.getAttribute("generatedKey");
int pageValue=0;
		if (token.trim().equals(key.trim())) {
			try {
				// model = new ModelAndView("forgotPassword");
				model.addAttribute("pageValue", pageValue);

				MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();

				String inputValue = request.getParameter("usernameFp");

				map.add("userName", inputValue);
				Object checkLogin = Constants.getRestTemplate()
						.postForObject(Constants.url + "checkUserNameForgotPass", map, Object.class);
				ObjectMapper objMapper = new ObjectMapper();

				Info info = objMapper.convertValue(checkLogin, Info.class);

				if (info.isError() == false) {

					User userObj = objMapper.readValue(info.getResponseObject1(), User.class);

				
					//Email OTP Send Logic;
					String genOTP = CommonUtility.getOTP(6);

					userOtpMap.put(userObj.getUserEmail(), genOTP);
					userTimeMap.put(userObj.getUserEmail(), CommonUtility.getTimePlusSpecMin(2));

					CommonUtility.sendEmailWithSubMsgAndToAdd("OTP For Forgot Password Request",
							" Enter the OTP as " + genOTP + ". \n OTP valid for 2 Minutes. Do not share otp with anyone.",
							userObj.getUserEmail());

					returnPage = "redirect:/showOTPPage";
					System.err.println("OTP send ");
					session.setAttribute("errorPassMsg1", "OTP sent to your Email");
					session.setAttribute("userId", userObj.getUserId());
					session.setAttribute("userEmail", userObj.getUserEmail());
				} else {
					// model.addObject("msg", "Password has been sent to your email");
					pageValue=1;
					session.setAttribute("pageValue", pageValue);
					// model = new ModelAndView("forgotPassword");
					returnPage = "redirect:/showForPassPage";
					// model.addObject("msg", "Invalid User Name");
					session.setAttribute("errorPassMsg1", info.getMsg());
				}
				CommonUtility.changeSessionKey(request);
			} catch (Exception e) {
				CommonUtility.changeSessionKey(request);
				session.setAttribute("errorPassMsg1", "Error Occurred");
				returnPage = "redirect:/showForPassPage";
				
			}
		} else {
			CommonUtility.changeSessionKey(request);
			returnPage = "redirect:/accessDenied";
		}
		return returnPage;

	}

	@RequestMapping(value = "/showOTPPage", method = RequestMethod.GET)
	public ModelAndView showOTPPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login_pages/otpPage");
		return mav;
	}

	@RequestMapping(value = "/validateOTP", method = RequestMethod.POST)
	public String validateOTP(Model model, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String returnPage = new String();
		String token = request.getParameter("token");
		String key = (String) session.getAttribute("generatedKey");
		try {
			if (token.trim().equals(key.trim())) {

				String otp = request.getParameter("otp");
				String userKey = (String) session.getAttribute("userEmail");
System.err.println("otp " +otp +" userKey ie email " +userKey);
				Calendar time = Calendar.getInstance();
				time = CommonUtility.getCurTime();
				try {
					time = userTimeMap.get(userKey);
				} catch (Exception e) {
					time = CommonUtility.getCurTime();
					System.err.println("in catch " + e.getMessage());
					e.printStackTrace();
				}
				int valid = 0;
				if (CommonUtility.getCurTime().getTime().after(time.getTime())) {
					System.err.println("time exceed");
					valid = -1;
					System.err.println("OTP Time out !!");
					session.setAttribute("errorPassMsg", "OTP Time out !!");
					session.setAttribute("errorMsg", "OTP Time out !!");
					returnPage = "redirect:/";
					// model.addObject("msg", "Invalid User Name");
					
				}
				if (valid < 0) {

				} else if (userOtpMap.get(userKey).equals(otp)) {
					System.err.println("OTP Matched");
					// session.setAttribute("userId", empLogin.getEmpId());
					returnPage = "redirect:/changePassPage";
				} else {
					System.err.println("OTP Not Matched");
					returnPage = "redirect:/";
					// model.addObject("msg", "Invalid User Name");
					session.setAttribute("errorMsg", "OTP Not Matched. Try Again");
				}

			} else {
				returnPage = "redirect:/accessDenied";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return returnPage;
	}

	@RequestMapping(value = "/changePassPage", method = RequestMethod.GET)
	public ModelAndView changePassPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login_pages/changePass");
		return mav;
	}

	@RequestMapping(value = "/chngNewPassword", method = RequestMethod.POST)
	public String changePassForm(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("Got me chngNewPassword");

		try {
			HttpSession session = request.getSession();
			String password = request.getParameter("newPass");
			String newConfPass = request.getParameter("newConfPass");

			int userId = (int) session.getAttribute("userId");
			System.out.println("Password Found" + password + "  " + userId);
			if (password.equals(newConfPass)) {
				System.err.println("Pass Matched");
				MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
				
				Pattern p = Pattern.compile("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$");
				Matcher m = p.matcher(password);

				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] messageDigest = md.digest(password.getBytes());
				BigInteger number = new BigInteger(1, messageDigest);
				String hashtext1 = number.toString(16);
				
				if (m.matches()) {

					 md = MessageDigest.getInstance("MD5");
					 messageDigest = md.digest(password.getBytes());
					 number = new BigInteger(1, messageDigest);
					 String hashtext = number.toString(16);
					 map.add("userPass", hashtext);
					 map.add("userId", userId);
					 map.add("makerUserId", userId);
					 map.add("makerDttime", CommonUtility.getCurrentYMDDateTime());
					 
								
					Object updateUserPass = Constants.getRestTemplate().postForObject(Constants.url + "/updateUserPassword", map, Object.class);
					
					ObjectMapper objMapper = new ObjectMapper();

					Info info = objMapper.convertValue(updateUserPass, Info.class);

					if (info.isError() == false) {
						session.removeAttribute("userId");
						session.setAttribute("errorMsg", info.getMsg());
					}
					
					//session.invalidate();
					return "redirect:/";
				}else {
					System.err.println("Pass does not contain Standard valid characters");
					session.setAttribute("userId", userId);
					session.setAttribute("errorPassMsg1", "Password does not contain characters of standard format.");
					return "redirect:/changePassPage";
				}
				
			} else {
				System.err.println("Pass does not Matched");
				
				session.setAttribute("userId", userId);
				session.setAttribute("errorPassMsg1", "Password and Confirm password Does not matched.");
				return "redirect:/changePassPage";
			}
		} catch (Exception e) {

			System.err.println("exception In chngNewPassword at Home Contr" + e.getMessage());

			e.printStackTrace();
			HttpSession session = request.getSession();
			session.invalidate();
		}
		model.addAttribute("errorMsg", "Password Changed Successfully");

		return "redirect:/";

	}
	
}
