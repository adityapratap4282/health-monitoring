package com.cognizant.PatientHealthMonitoringPortal.HealthMonitoring;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;
import com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails;

public class BloodCount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BloodCount() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession hs = request.getSession();
		UserDetails user = (UserDetails) hs.getAttribute("user");

		String a = user.getUserId().toString();
		try {

			LocalDate ld = LocalDate.now();
			Date date = java.sql.Date.valueOf(ld);

			long b = Long.parseLong(request.getParameter("WBC"));
			long c = Long.parseLong(request.getParameter("RBC"));
			long d = Long.parseLong(request.getParameter("platlets"));
			String e = request.getParameter("Time");

			Connection con = OracleDatabase.connect();

			PreparedStatement ps = con.prepareStatement("insert into bloodcount_values values(?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setLong(2, b);
			ps.setLong(3, c);
			ps.setLong(4, d);
			ps.setString(5, e);
			ps.setDate(6, date);

			int i1 = ps.executeUpdate();
			if (i1 > 0)
				request.getRequestDispatcher("BloodCount.jsp?Msg=Details recorded successfully..!!!").forward(request,
						response);
			else
				request.getRequestDispatcher("BloodCount.jsp?errMsg=Enter details correctly.").forward(request, response);

		} catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);

		}

	}
}
