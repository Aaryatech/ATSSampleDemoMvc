package com.ats.docdemo;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ats.docdemo.common.Constants;
import com.ats.docdemo.common.Info;
import com.ats.docdemo.common.VpsImageUpload;

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
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		/*
		 * AssetCategory[] assetArr =
		 * Constants.getRestTemplate().getForObject(Constants.url +
		 * "/getAllAssetCategory", AssetCategory[].class); List<AssetCategory> assetList
		 * = new ArrayList<AssetCategory>(Arrays.asList(assetArr));
		 * System.err.println("cat List " + assetList.toString());
		 */
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "3_col_page";
	}
	// submitInsertBank

	@RequestMapping(value = "/submitInsertBank", method = RequestMethod.POST)
	public String submitInsertBank(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("doc") MultipartFile doc, @RequestParam("docImg") MultipartFile docImg) {
System.err.println("Pan no"  + request.getParameter("pan").toUpperCase());
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

}
