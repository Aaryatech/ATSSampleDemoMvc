package com.ats.docdemo;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ats.docdemo.common.CommonUtility;
import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.Info;
import com.ats.docdemo.common.VpsImageUpload;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		//System.err.println("req /" + request.toString());

		AssetCategory[] assetArr = Constants.getRestTemplate().getForObject(Constants.url1 + "/getAllAssetCategory",
				AssetCategory[].class);
		List<AssetCategory> assetCatList = new ArrayList<AssetCategory>(Arrays.asList(assetArr));
		//System.err.println("cat List " + assetCatList.toString());

		model.addAttribute("catId", 28);
		model.addAttribute("assetCatList", assetCatList);

		MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
		map.add("companyId", 1);
		Location[] location = Constants.getRestTemplate().postForObject(Constants.url1 + "/getLocationList", map,
				Location[].class);

		List<Location> locationList = new ArrayList<Location>(Arrays.asList(location));
		model.addAttribute("locationIds", "5,9,2,7");
		model.addAttribute("locationList", locationList);
		return "login_pages/login";
		// return "dataTableDemo";
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginProcess(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.err.println("req loginProcess " + request.toString());
		String mav = new String();
		HttpSession session = request.getSession();

		try {
			String token = request.getParameter("token");
			String key = (String) session.getAttribute("generatedKey");

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
			
			if (token.trim().equals(key.trim())) {

				System.err.println("Key matched");
			}
			
			String name = request.getParameter("username");
			String password = request.getParameter("password");

			if (name.equalsIgnoreCase("") || password.equalsIgnoreCase("") || name == null || password == null) {

				mav = "redirect:/";
				session.setAttribute("errorMsg", "Login Failed - User name or password can not be null");
			} else {
				
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] messageDigest = md.digest(password.getBytes());
				BigInteger number = new BigInteger(1, messageDigest);

				String hashtext = number.toString(16);

				map.add("userName", name);
				map.add("pass", hashtext);
				//map.add("pass", password);
				
				Object checkLogin = Constants.getRestTemplate()
						.postForObject(Constants.url + "checkUserNamePassForLogin", map, Object.class);
				ObjectMapper objMapper = new ObjectMapper();

				Info info = objMapper.convertValue(checkLogin, Info.class);

				if (info.isError() == false) {

					User userObj = objMapper.readValue(info.getResponseObject1(), User.class);

					if (userObj.getIsEnrolled() == 0) {
						// new User First time login, send to change for password.
						mav = "redirect:/changePassPage";
					} else {
						// existing user login send to welcome page/dash board.
					
						mav = "redirect:/getPage/3";
					}
					session.setAttribute("userId", userObj.getUserId());
					session.setAttribute("userObj", userObj);
				} else {
					// Login Failed
					// show msg in jsp

					mav = "redirect:/";
					session.setAttribute("errorMsg", info.getMsg());

				}
			}
		} catch (Exception e) {
			mav = "redirect:/";
			session.setAttribute("errorMsg", "Login Failed");
			e.printStackTrace();
		}

		return mav;
	}

	@RequestMapping(value = "/getCatList", method = RequestMethod.GET)
	public @ResponseBody String getCatList(Locale locale, Model model) {
		System.err.println("Ajax call");
		AssetCategory[] assetArr = Constants.getRestTemplate().getForObject(Constants.url1 + "/getAllAssetCategory",
				AssetCategory[].class);
		List<AssetCategory> assetList = new ArrayList<AssetCategory>(Arrays.asList(assetArr));
		System.err.println("cat List " + assetList.toString());

		String jsonString = CommonUtility.toJSONString(assetList);
		System.err.println("jsonString " + jsonString);
		return jsonString;
	}

	@RequestMapping(value = "/getSingleCategory", method = RequestMethod.GET)
	public @ResponseBody String getSingleCategory(Locale locale, Model model) {
		System.err.println("Ajax call");
		AssetCategory[] assetArr = Constants.getRestTemplate().getForObject(Constants.url1 + "/getAllAssetCategory",
				AssetCategory[].class);
		List<AssetCategory> assetList = new ArrayList<AssetCategory>(Arrays.asList(assetArr));
		System.err.println("cat List " + assetList.toString());

		String jsonString = CommonUtility.toJSONString(assetList.get(0));
		System.err.println("jsonString " + jsonString);
		return jsonString;
	}

	@RequestMapping(value = "/getPage/{pageNumber}", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @PathVariable int pageNumber) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		if (pageNumber == 1) {
			return "1_col_page";
		} else if (pageNumber == 2) {
			return "2_col_page";
		} else {

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

			return "3_col_page";
		}
	}

	// submitInsertBank
//Demonstartion of image upload
	@RequestMapping(value = "/submitInsertBank", method = RequestMethod.POST)
	public String submitInsertBank(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("doc") MultipartFile doc, @RequestParam("docImg") MultipartFile docImg) {
		String docName = "";

		if (!doc.getOriginalFilename().equalsIgnoreCase("")) {
			docName = "_" + doc.getOriginalFilename();
			VpsImageUpload upload = new VpsImageUpload();
			try {
				Info info = upload.saveUploadedImge(doc, Constants.empDocSaveUrl, docName,
						Constants.imageAndDocFileExtension, 0, 0, 0, 0, 0);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			System.err.println("In else "); // In edit page if image not changed set previous name as it is
			docName = request.getParameter("editImg");
		}

		docName = null;
		if (!docImg.getOriginalFilename().equalsIgnoreCase("")) {

			docName = "_" + docImg.getOriginalFilename();

			VpsImageUpload upload = new VpsImageUpload();
			try {
				Info info = upload.saveUploadedImge(docImg, Constants.empDocSaveUrl, docName,
						Constants.imageFileExtensions, 1, 800, 500, 0, 0);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			System.err.println("In else "); // In edit page if image not changed set previous name as it is
			docName = request.getParameter("editImg");
		}
		return "";

	}

	@RequestMapping(value = "/{showAllControlPage}", method = RequestMethod.GET)
	public String showAllControlPage(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		System.err.println("Heii");
		String x = null;
		try {
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);

			model.addAttribute("serverTime", formattedDate);

			x = "moh_pages/moh_all_control";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;

	}

	@RequestMapping(value = "/showTables", method = RequestMethod.GET)
	public String showTables(Locale locale, Model model) {

		return "table_pages/demo_tables";
		// return "dataTableDemo";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {

		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "/sessionTimeOut", method = RequestMethod.GET)
	public String sessionTimeOut(HttpSession session) {
		System.out.println("User Logout");

		session.invalidate();
		return "redirect:/";
	}

}
