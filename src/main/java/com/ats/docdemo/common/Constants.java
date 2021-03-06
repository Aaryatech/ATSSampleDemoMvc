package com.ats.docdemo.common;

import org.springframework.http.client.support.BasicAuthorizationInterceptor;
import org.springframework.web.client.RestTemplate;

public class Constants {
	public static final String url = "http://localhost:8099/";
	public static final String url1 = "http://107.180.88.121:8080/HrEsayWebApi/";
	public static final String url2 = "http://115.124.111.55:8080/rusaaccessapitest/";
	public
	  static final String empDocSaveUrl ="/home/ubuntu/Downloads/apache-tomcat-9.0.24/webapps/uploads/";
	public static String[] imageAndDocFileExtension = { "txt", "doc", "docx", "pdf", "xls", "xlsx","jpg", "jpeg", "gif", "png" }; 
	public static String[] imageFileExtensions = {"jpg", "jpeg", "gif", "png" };
	// local

	/*
	 * public static final String url = "http://localhost:8094/"; public static
	 * String REPORT_SAVE =
	 * "/home/ubuntu/Report.pdf";//"/home/lenovo/Documents/pdf/Report.pdf"; public
	 * static final String ReportURL = "http://localhost:8081/hreasy/"; public
	 * static final String attsDocSaveUrl ="/home/maddy/ats-11/";
	 * //"/home/lenovo/Downloads/old/apache-tomcat-8.5.37/webapps/media/"; public
	 * static final String docSaveUrl = "/home/maddy/ats-11/";
	 * ///"/home/lenovo/Downloads/old/apache-tomcat-8.5.37/webapps/media/";
	 * 
	 * public static final String companyLogoSaveUrl = "/home/maddy/ats-11/";///
	 * "/home/lenovo/Downloads/old/apache-tomcat-8.5.37/webapps/media/"; public
	 * static final String empDocSaveUrl =
	 * "/home/ubuntu/Downloads/apache-tomcat-9.0.24/webapps/uploads/";//
	 * "/home/lenovo/Downloads/old/apache-tomcat-8.5.37/webapps/media/"; public
	 * static final String leaveDocSaveUrl = "/home/maddy/ats-11/";///
	 * "/home/lenovo/Downloads/old/apache-tomcat-8.5.37/webapps/media/"; public
	 * static final String imageSaveUrl = "/home/maddy/ats-11/";//
	 * "/home/lenovo/Downloads/old/apache-tomcat-8.5.37/webapps/media/";
	 * 
	 * public static final String companyLogoShowUrl =
	 * "http://localhost:8080/media/"; public static final String empDocShowUrl =
	 * "http://localhost:8081/uploads/";///"http://localhost:8080/media/"; public
	 * static final String leaveDocShowUrl = "http://localhost:8080/media/"; public
	 * static final String imageShowUrl = "http://localhost:8080/media/"; public
	 * static final String templateShowUrl =
	 * "http://localhost:8080/hrdocument/templatedoc/";
	 */

	// monginispune
	/*
	 * public static final String ReportURL = "http://192.168.1.25:8080/HrEasy/";
	 * public static final String url="http://192.168.1.25:8080/HrEsayWebApi/";
	 * public static String REPORT_SAVE =
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/HrEasy/report.pdf"; public
	 * static final String attsDocSaveUrl =
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/hrdocument/attendancedoc/";
	 * public static final String docSaveUrl=
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/hrdocument/updatedoc/";
	 * 
	 * public static final String companyLogoSaveUrl =
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/hrdocument/companylogo/"; public
	 * static final String empDocSaveUrl =
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/hrdocument/empdoc/"; public
	 * static final String leaveDocSaveUrl =
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/hrdocument/leavedoc/"; public
	 * static final String imageSaveUrl =
	 * "/home/supertom/apache-tomcat-8.5.35/webapps/hrdocument/mixDoc/";
	 * 
	 * public static final String companyLogoShowUrl =
	 * "http://192.168.1.25:8080/hrdocument/companylogo/"; public static final
	 * String empDocShowUrl = "http://192.168.1.25:8080/hrdocument/empdoc/"; public
	 * static final String leaveDocShowUrl =
	 * "http://192.168.1.25:8080/hrdocument/leavedoc/"; public static final String
	 * imageShowUrl = "http://192.168.1.25:8080/hrdocument/mixDoc/"; public static
	 * final String templateShowUrl =
	 * "http://192.168.1.25:8080/hrdocument/templatedoc/";
	 */

	// atsserver

	/*
	 * public static final String url = "http://107.180.88.121:8080/HrEsayWebApi/";
	 * public static String REPORT_SAVE =
	 * "/opt/apache-tomcat-8.5.47/webapps/hrdocument/Report.pdf"; public static
	 * final String ReportURL = "http://107.180.88.121:8080/HrEasy/";// gfpl public
	 * public static final String attsDocSaveUrl =
	 * "/opt/apache-tomcat-8.5.47/webapps/hrdocument/attendancedoc/"; public static
	 * final String docSaveUrl =
	 * "/opt/apache-tomcat-8.5.47/webapps/hrdocument/updatedoc/";
	 * 
	 * public static final String companyLogoSaveUrl =
	 * "/opt/apache-tomcat-8.5.47/webapps/hrdocument/companylogo/"; public static
	 * final String empDocSaveUrl =
	 * "/opt/apache-tomcat-8.5.47/webapps/hrdocument/empdoc/"; public static final
	 * String leaveDocSaveUrl =
	 * "/opt/apache-tomcat-8.5.47/webapps/hrdocument/leavedoc/"; public static final
	 * String imageSaveUrl = "/opt/apache-tomcat-8.5.47/webapps/hrdocument/mixDoc/";
	 * 
	 * public static final String companyLogoShowUrl =
	 * "http://107.180.88.121:8080/hrdocument/companylogo/"; public static final
	 * String empDocShowUrl = "http://107.180.88.121:8080/hrdocument/empdoc/";
	 * public static final String leaveDocShowUrl =
	 * "http://107.180.88.121:8080/hrdocument/leavedoc/"; public static final String
	 * imageShowUrl = "http://107.180.88.121:8080/hrdocument/mixDoc/"; public static
	 * final String templateShowUrl =
	 * "http://107.180.88.121:8080/hrdocument/templatedoc/";
	 * 
	 * public static RestTemplate rest = new RestTemplate(); public static String[]
	 * imageAndDocFileExtension = { "txt", "doc", "docx", "pdf", "xls", "xlsx",
	 * "jpg", "jpeg", "gif", "png" }; public static String[] imageFileExtensions = {
	 * "jpg", "jpeg", "gif", "png" }; public static String empLoanAgrDocViewUrl;
	 * public static String empLoanAgrDocSaveUrl;
	 */
	public static RestTemplate rest = new RestTemplate();
	public static RestTemplate getRestTemplate() {
		rest = new RestTemplate();
		rest.getInterceptors().add(new BasicAuthorizationInterceptor("aaryatech", "Aaryatech@1cr"));
		return rest;

	}
	
	//Extended form control
	//http://demo.interface.club/limitless/demo/Template/layout_1/LTR/default/full/form_controls_extended.html
}