package com.cognizant.PatientHealthMonitoringPortal.Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails;
import com.cognizant.PatientHealthMonitoringPortal.Services.Service;

public class LoginFilter implements Filter {

	public LoginFilter() {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String uid = request.getParameter("login");
		String pass = request.getParameter("password");

		try {
			UserDetails u = Service.checkUser(uid, pass);

			if (u != null) {
				request.setAttribute("user", u);

				RequestDispatcher rd = request.getRequestDispatcher("HealthServlet.do");
				rd.forward(request, response);

			} else {
				RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp?errMsg=INVALID USER...!!!!!!!!!!!");
				rd.forward(request, response);
			}
		} catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);

		}

	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
