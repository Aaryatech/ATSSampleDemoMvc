package com.ats.docdemo;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckUserInterceptor extends HandlerInterceptorAdapter {

	int x=5;
	public boolean preHandleAction(HttpServletRequest request,
			HttpServletResponse response,
            Object handler)
     throws Exception
     
     {
		System.err.println("I am 1" +x);
		x=x+1;
		return false;
		
     }
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws IOException {
		
		try {
			//boolean a=preHandleAction(request,response,handler);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		HttpSession session = request.getSession();

		String path = request.getRequestURI().substring(request.getContextPath().length());
		//System.out.println("Current Req Mapping is: "+request.getServletPath());

		if (path.startsWith("/pdf")) {
			return true;
		}
		try {
			String resourcesPath = path.substring(1, 4);
			// System.out.println("substring is: "+resourcesPath);
			if (resourcesPath.equalsIgnoreCase("res")) {
				return true;
			}
		} catch (Exception e) {
		}

		if (!path.equalsIgnoreCase("/sessionTimeOut") || path.startsWith("/resources")) {
			Object userObj = null;
			try {
				userObj = (Object) session.getAttribute("userObj");
			} catch (Exception e) {
			}

			try {
				if (request.getServletPath().equals("/") || request.getServletPath().equals("/loginProcess")
						|| request.getServletPath().equals("/logout") || request.getServletPath().equals("/login")
						|| request.getServletPath().equals("/checkUserAndSendOtpEmail")
						|| request.getServletPath().startsWith("/pdf")
						|| request.getServletPath().startsWith("/showOTPPage")
						|| request.getServletPath().startsWith("/validateOTP")
						|| request.getServletPath().startsWith("/chngNewPassword")
						|| request.getServletPath().startsWith("/changePassPage")
						|| request.getServletPath().startsWith("/showForPassPage") ||  request.getServletPath().startsWith("/checkForSession")) { // ||request.getServletPath().equals("/logout"))
																						// { //
																						// ||request.getServletPath().equals("/logout")
					// System.out.println("Login request");

					return true;
				} else if (userObj==null) {
					// System.out.println("Session Expired");

					// request.setAttribute("emassage", "login failed");
					response.sendRedirect(request.getContextPath() + "/sessionTimeOut");

					return false;
				} else {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect(request.getContextPath() + "/sessionTimeOut");

				return false;
			}

		}
		return true;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

		
		/*
		 * System.out.println("post intercept toString " + modelAndView.toString());
		 * System.out.println("post intercept getViewName " +
		 * modelAndView.getViewName());
		 * 
		 * System.out.println("post intercept getView " + modelAndView.getView());
		 * System.out.println("post intercept getStatus " +modelAndView.getStatus());
		 * System.out.println("post intercept getModel " + modelAndView.getModel());
		 * System.out.println("post intercept getModelMap " +
		 * modelAndView.getModelMap());
		 */
		 

		super.postHandle(request, response, handler, modelAndView);
	}

}