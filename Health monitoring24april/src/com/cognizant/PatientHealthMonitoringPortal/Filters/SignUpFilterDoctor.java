package com.cognizant.PatientHealthMonitoringPortal.Filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;
import com.cognizant.PatientHealthMonitoringPortal.Services.*;
import com.cognizant.PatientHealthMonitoringPortal.Models.DoctorDetails;

public class SignUpFilterDoctor implements Filter {
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		boolean found = false;
		try {

			Connection con = OracleDatabase.connect();
			String query = "select * from doctor_details";
			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();
			String s = request.getParameter("emailid");
			while (rs.next()) {
				if (rs.getString(5).equals(s)) {
					found = true;
					break;
				}
			}
			if (!found) {
				String fName = request.getParameter("firstname");
				String fName1 = request.getParameter("firstname").toString();

				String lName = request.getParameter("lastname");
				int age = Integer.parseInt(request.getParameter("age"));
				long contactNo = Long.parseLong(request.getParameter("contactno"));
				String emailId = request.getParameter("emailid");
				String gender = request.getParameter("gender");
				String city = request.getParameter("city");
				String state = request.getParameter("state");
				// String userId = request.getParameter("userid");
				String password = request.getParameter("password");

				String uid = ServiceDoctor.getUserId();

				String securityquestion = request.getParameter("question");
				String securityanswer = request.getParameter("answer");

				DoctorDetails u = new DoctorDetails(uid, fName, lName, age, contactNo, emailId, gender, city, state,
						password, securityquestion, securityanswer);

				ServiceDoctor.addUser(u);

				request.setAttribute("firstName", fName1);
				request.getRequestDispatcher("LoginPage.jsp?Msg=Account Created.Now Please Login with this ID  :" + uid)
						.forward(request, response);

			} else {
				RequestDispatcher rd = request.getRequestDispatcher("SignUpPageDoctor.jsp?errMsg=User Already Exists!");
				rd.forward(request, response);
			}
		} catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}
}
