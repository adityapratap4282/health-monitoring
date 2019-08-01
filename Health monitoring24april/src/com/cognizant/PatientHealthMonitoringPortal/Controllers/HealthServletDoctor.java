package com.cognizant.PatientHealthMonitoringPortal.Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.PatientHealthMonitoringPortal.Services.ServiceDoctor;
import com.cognizant.PatientHealthMonitoringPortal.Models.DoctorDetails;

public class HealthServletDoctor extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uid = request.getParameter("login");
		String pass = request.getParameter("password");

		try {
			DoctorDetails u = ServiceDoctor.checkUser(uid, pass);

			if (u != null) {

				HttpSession hs = request.getSession();
				hs.setAttribute("user", u);

				RequestDispatcher rd = request.getRequestDispatcher("DoctorChoice.jsp");
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

}
