package com.cognizant.PatientHealthMonitoringPortal.HealthMonitoring;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;
import com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails;

//(used anotation instead of web xml)
public class Risk extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession hs = request.getSession();
		UserDetails user = (UserDetails) hs.getAttribute("user");
		hs.setAttribute("user",user);

		float bm = 0;
		long glu=0;
		int age = 0;
		
		try {
			Connection con = OracleDatabase.connect();
			PreparedStatement ps = con.prepareStatement("select * from bmi_values where user_id=?");
			ps.setString(1, user.getUserId());

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				bm = rs.getFloat(4);

			}

		}  catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
		}

		try {

			Connection con = OracleDatabase.connect();

			PreparedStatement ps = con.prepareStatement("select * from user_details where user_id=?");
			ps.setString(1, user.getUserId());

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				age = rs.getInt(3);

			}

		}  catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
		}
		
		try {
			Connection con = OracleDatabase.connect();
			PreparedStatement ps = con.prepareStatement("select * from glucose_values where user_id=?");
			ps.setString(1, user.getUserId());

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				System.out.println ("ghii"  );
				glu = rs.getLong(3);

			}
			System.out.println ("glucose" +glu  );
		}  catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
		}
	
		
		if (bm == 0.0 || glu == 0 )
		{
			 request.getRequestDispatcher("FullReport.jsp?Msg=Please enter the BMI and Glucose values first.").forward(request, response);
			
		}
		else if ((bm >= 23 && age >= 45 ) ||  (age>=45 && glu>125) || ( bm>=23 && age>=45 && glu>125) ) 
			{
			request.getRequestDispatcher("FullReport.jsp?errMsg=Oops..!! You have a risk of being diabetic..!!!").forward(request, response);
	
		}	
		else
		{			 
			request.getRequestDispatcher("FullReport.jsp?Msg=Thank God..!! You don't have any risk.").forward(request, response);
			
		}

	}
}
