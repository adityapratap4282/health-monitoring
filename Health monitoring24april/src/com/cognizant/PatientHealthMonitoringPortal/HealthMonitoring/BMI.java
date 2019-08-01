package com.cognizant.PatientHealthMonitoringPortal.HealthMonitoring;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.LocalTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;
import com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails;

public class BMI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BMI() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		HttpSession hs = request.getSession();
		UserDetails user = (UserDetails) hs.getAttribute("user");
		String a = user.getUserId().toString();
		float b = Float.parseFloat(request.getParameter("height"));
		float c = Float.parseFloat(request.getParameter("weight"));

		LocalTime lt = LocalTime.now();
		String time = lt.toString();

		LocalDate ld = LocalDate.now();
		Date date = java.sql.Date.valueOf(ld);

		try {
			// Calculation of BMI

			float height = b / 100;

			System.out.println(height);
			float weight = c;
			float f = height * height;
			System.out.println(f);
			float bmi = (float) (weight) / f;

			Connection con =OracleDatabase.connect();
			PreparedStatement ps = con.prepareStatement("select * from BMI_Values where user_id=?");
			ps.setString(1, a);
			PreparedStatement ps1 = con.prepareStatement("insert into bmi_values values(?,?,?,?,?,?)");
			ps1.setString(1, a);
			ps1.setFloat(2, b);
			ps1.setFloat(3, c);
			ps1.setFloat(4, bmi);
			ps1.setString(5, time);
			ps1.setDate(6, date);
			int i1 = ps1.executeUpdate();
			if (i1 > 0) 
			{
				request.setAttribute("bmivalue", bmi);
				request.setAttribute("id1", a);
				request.setAttribute("height", height);
				request.setAttribute("weight", weight);
				request.setAttribute("date", date);
				request.setAttribute("time", time);
			}
			
			request.getRequestDispatcher("SuccessBMI.jsp").forward(request, response);
		} catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
			out.close();

		}

	}
}
