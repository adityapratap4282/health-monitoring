package com.cognizant.PatientHealthMonitoringPortal.HealthMonitoring;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails;

@WebServlet("/views/FetchBm")

public class FetchBMI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FetchBMI() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		/*
		 * UserDetails
		 * user=(UserDetails)request.getSession().getAttribute("user");
		 * request.getSession().setAttribute("user", user);
		 * 
		 */
		UserDetails user = (UserDetails) request.getAttribute("user");
		request.setAttribute("user", user);

		String a = user.getUserId().toString();
		System.out.println(a);
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "cognizant");
			PreparedStatement ps = con.prepareStatement("select * from BMI_Values where user_id=?");
			ps.setString(1, a);
			request.getRequestDispatcher("sucessbmi.jsp").forward(request, response);

		}  catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
			out.close();

		}

	}
}
