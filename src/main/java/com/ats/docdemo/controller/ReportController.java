package com.ats.docdemo.controller;

import java.awt.Dimension;
import java.awt.Insets;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.InvalidParameterException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.zefer.pd4ml.PD4Constants;
import org.zefer.pd4ml.PD4ML;
import org.zefer.pd4ml.PD4PageMark;

import com.ats.docdemo.common.Constants;
import com.ats.docdemo.model.CustomerHeaderMaster;
import com.ats.docdemo.model.ExportToExcel;
import com.ats.docdemo.util.ExceUtil;


@Controller
@Scope("session")
public class ReportController {
	
	
	@RequestMapping(value = "/custExcel", method = RequestMethod.GET)
	public void custExcel(HttpServletRequest request, HttpServletResponse response) {
		
	CustomerHeaderMaster[] custArr = Constants.getRestTemplate()
			.getForObject(Constants.kkpmUrl + "/getCustListForExcel", CustomerHeaderMaster[].class);
			List<CustomerHeaderMaster> custList = new ArrayList<CustomerHeaderMaster>(Arrays.asList(custArr));
	
			List<ExportToExcel> exportToExcelList = new ArrayList<ExportToExcel>();

			ExportToExcel expoExcel = new ExportToExcel();
			List<String> rowData = new ArrayList<String>();

			rowData.add("Sr. No");
			rowData.add("Customer Id");
			rowData.add("Firm/Customer Name");
			rowData.add("Owner Partner Id");
			rowData.add("Owner Partner Name");
			rowData.add("Group Id");
			rowData.add("Group Name");
			rowData.add("Assesse Name");
			rowData.add("PAN No");
			rowData.add("Email Id");
			rowData.add("Phone No");
			//rowData.add("Address 1");
			//rowData.add("Address 2");
			rowData.add("City");
			rowData.add("Pincode");
			
			rowData.add("Business Nature");
			//rowData.add("Folder Id");
			//rowData.add("File No");
			
			rowData.add("DOB");
			rowData.add("Aadhar No");
			rowData.add("Is Active ?");
			
			
			expoExcel.setRowData(rowData);
			exportToExcelList.add(expoExcel);

			for (int i = 0; i < custList.size(); i++) {
				expoExcel = new ExportToExcel();
				rowData = new ArrayList<String>();

				rowData.add("" + (i + 1));

				rowData.add(""+ custList.get(i).getCustId());
				rowData.add("" + custList.get(i).getCustFirmName());
				rowData.add("" + custList.get(i).getOwnerEmpId());
				rowData.add("" + custList.get(i).getExVar2());//owner name

				rowData.add("" + custList.get(i).getCustGroupId());
				rowData.add("" + custList.get(i).getExVar1());//group name
			    rowData.add("" + custList.get(i).getCustAssesseeName());
				rowData.add("" + custList.get(i).getCustPanNo());
				rowData.add("" + custList.get(i).getCustEmailId());
				
				 rowData.add("" + custList.get(i).getCustPhoneNo());
					
				 //rowData.add("" + custList.get(i).getCustAddr1());
					//rowData.add("" + custList.get(i).getCustAddr2());
					
					rowData.add("" + custList.get(i).getCustCity());
					rowData.add("" + custList.get(i).getCustPinCode());
					rowData.add("" + custList.get(i).getCustBusinNatute());
				
					//rowData.add("" + custList.get(i).getCustFolderId());
					//rowData.add("" + custList.get(i).getCustFileNo());
					
					rowData.add("" + custList.get(i).getCustDob());
					rowData.add("" + custList.get(i).getCustAadhar());
					rowData.add("" + custList.get(i).getIsActive());


				expoExcel.setRowData(rowData);
				exportToExcelList.add(expoExcel);
			}
			XSSFWorkbook wb = null;
			try {

				// System.out.println("Excel List :" + exportToExcelList.toString());
				String rep = "Customer Master";
				System.err.println("rep  " + rep);
				String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());

				// String excelName = (String) session.getAttribute("excelName");
				wb = ExceUtil.createWorkbook(exportToExcelList, rep, " ",
						"Export Time " + date + " ", "  ", 'Q');
				ExceUtil.autoSizeColumns(wb, 3);
				response.setContentType("application/vnd.ms-excel");
				response.setHeader("Content-disposition",
						"attachment; filename=" + rep + "-" + date + ".xlsx");
				wb.write(response.getOutputStream());

			} catch (IOException ioe) {
				throw new RuntimeException("Error writing spreadsheet to output stream");
			} finally {
				if (wb != null) {
					try {
						wb.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
	}
	
	
	@RequestMapping(value = "/pdf/gernerateRelievingLetter/{empId}/{relDate1}/{relDate2}/{relDate3}", method = RequestMethod.GET)
	public ModelAndView gernerateRelievingLetter(@PathVariable int empId, @PathVariable String relDate1,
			@PathVariable String relDate2, @PathVariable String relDate3, HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView model = new ModelAndView("pdf_report/gernerateRelievingLetter");
		try {

			MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
			map.add("empId", empId);
			/*
			 * EmpDetailForLetters empDetail = Constants.getRestTemplate()
			 * .postForObject(Constants.url + "/getEmpDetailForGenrateLetters", map,
			 * EmpDetailForLetters.class);
			 */
			//model.addObject("empDetail", empDetail);

			SimpleDateFormat name_date = new SimpleDateFormat("dd MMM yyyy", Locale.ENGLISH);
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");

			Date dt1 = sdf.parse(relDate1);
			model.addObject("relDate1", name_date.format(dt1));

			Date dt2 = sdf.parse(relDate2);
			model.addObject("relDate2", name_date.format(dt2));

			Date dt3 = sdf.parse(relDate3);
			model.addObject("relDate3", name_date.format(dt3));
			// System.out.println(list);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}
	
	
	private Dimension format = PD4Constants.A4;
	private boolean landscapeValue = false;
	private int topValue = 8;
	private int leftValue = 0;
	private int rightValue = 0;
	private int bottomValue = 8;
	private String unitsValue = "m";
	private String proxyHost = "";
	private int proxyPort = 0;

	private int userSpaceWidth = 850;
	private static int BUFFER_SIZE = 1024;

	@RequestMapping(value = "/pdf", method = RequestMethod.GET)
	public void showPDF(HttpServletRequest request, HttpServletResponse response) {

		String url = request.getParameter("url");
		File f = new File(Constants.REPORT_SAVE);
		try {
			runConverter(Constants.ReportURL + url, f, request, response);
			// runConverter("www.google.com", f,request,response);

		} catch (IOException e) {

			System.out.println("Pdf conversion exception " + e.getMessage());
		}

		ServletContext context = request.getSession().getServletContext();
		String appPath = context.getRealPath("");

		String filePath = Constants.REPORT_SAVE;

		String fullPath = appPath + filePath;
		File downloadFile = new File(filePath);
		FileInputStream inputStream = null;
		try {
			inputStream = new FileInputStream(downloadFile);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		try {
			// get MIME type of the file
			String mimeType = context.getMimeType(fullPath);
			if (mimeType == null) {
				// set to binary type if MIME mapping not found
				mimeType = "application/pdf";
			}
			// System.out.println("MIME type: " + mimeType);

			String headerKey = "Content-Disposition";

			// response.addHeader("Content-Disposition", "attachment;filename=report.pdf");
			response.setContentType("application/pdf");

			OutputStream outStream;

			outStream = response.getOutputStream();

			byte[] buffer = new byte[BUFFER_SIZE];
			int bytesRead = -1;

			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outStream.write(buffer, 0, bytesRead);
			}

			inputStream.close();
			outStream.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	public void doConversion(String url, String outputPath)
			throws InvalidParameterException, MalformedURLException, IOException {
		File output = new File(outputPath);
		java.io.FileOutputStream fos = new java.io.FileOutputStream(output);

		PD4ML pd4ml = new PD4ML();

		try {

			PD4PageMark footer = new PD4PageMark();
			footer.setPageNumberTemplate("page $[page] of $[total]");
			footer.setTitleAlignment(PD4PageMark.LEFT_ALIGN);
			footer.setPageNumberAlignment(PD4PageMark.RIGHT_ALIGN);
			footer.setInitialPageNumber(1);
			footer.setFontSize(8);
			footer.setAreaHeight(15);

			pd4ml.setPageFooter(footer);

		} catch (Exception e) {
			System.out.println("Pdf conversion method excep " + e.getMessage());
		}
		try {
			pd4ml.setPageSize(landscapeValue ? pd4ml.changePageOrientation(format) : format);
		} catch (Exception e) {
			System.out.println("Pdf conversion ethod excep " + e.getMessage());
		}

		if (unitsValue.equals("mm")) {
			pd4ml.setPageInsetsMM(new Insets(topValue, leftValue, bottomValue, rightValue));
		} else {
			pd4ml.setPageInsets(new Insets(topValue, leftValue, bottomValue, rightValue));
		}

		pd4ml.setHtmlWidth(userSpaceWidth);

		pd4ml.render(new URL(url), fos);
		fos.close();

		System.out.println(outputPath + "\ndone.");
	}
	
	private void runConverter(String urlstring, File output, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		if (urlstring.length() > 0) {
			if (!urlstring.startsWith("http://") && !urlstring.startsWith("file:")) {
				urlstring = "http://" + urlstring;
			}
			// System.out.println("PDF URL " + urlstring);
			java.io.FileOutputStream fos = new java.io.FileOutputStream(output);

			PD4ML pd4ml = new PD4ML();

			try {

				PD4PageMark footer = new PD4PageMark();
				pd4ml.enableSmartTableBreaks(true);
				footer.setPageNumberTemplate("page $[page] of $[total]");
				footer.setTitleAlignment(PD4PageMark.LEFT_ALIGN);
				footer.setPageNumberAlignment(PD4PageMark.RIGHT_ALIGN);
				footer.setInitialPageNumber(1);
				footer.setFontSize(8);
				footer.setAreaHeight(15);

				pd4ml.setPageFooter(footer);

			} catch (Exception e) {
				System.out.println("Pdf conversion method excep " + e.getMessage());
			}
			try {
				pd4ml.setPageSize(landscapeValue ? pd4ml.changePageOrientation(format) : format);
				// pd4ml.setPageSize(new java.awt.Dimension(15*72, 11*72));
			} catch (Exception e) {
				System.out.println("Pdf conversion ethod excep " + e.getMessage());
			}

			if (unitsValue.equals("mm")) {
				pd4ml.setPageInsetsMM(new Insets(topValue, leftValue, bottomValue, rightValue));
			} else {
				pd4ml.setPageInsets(new Insets(topValue, leftValue, bottomValue, rightValue));
			}

			pd4ml.setHtmlWidth(userSpaceWidth);

			pd4ml.render(urlstring, fos);

		}
	}
}
