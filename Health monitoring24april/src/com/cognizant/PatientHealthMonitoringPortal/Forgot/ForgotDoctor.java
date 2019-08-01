package com.cognizant.PatientHealthMonitoringPortal.Forgot;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;

public class ForgotDoctor extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		String ques = request.getParameter("question");
		String ans = request.getParameter("answer");
		String id = request.getParameter("login");

		HttpSession hs = request.getSession();
		hs.setAttribute("id", id);

		try {
			Connection con = OracleDatabase.connect();

			PreparedStatement ps = con.prepareStatement("select * from doctor_details where USER_ID=?");
			ps.setString(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				if (rs.getString(10).equals(id) && rs.getString(11).equals(ques) && rs.getString(12).equals(ans)) {
					request.setAttribute("id", id);
					RequestDispatcher rd = request.getRequestDispatcher("NewPasswordDoctor.jsp");
					rd.forward(request, response);

				} else {
					RequestDispatcher rd2 = request
							.getRequestDispatcher("ForgotDoctor.jsp?errMsg=INVALID CREDENTIALS...!!!!!!!!!!!");
					rd2.forward(request, response);

				}
			} else {
				RequestDispatcher rd2 = request
						.getRequestDispatcher("ForgotDoctor.jsp?errMsg=USER DOESN'T EXIST...!!!!!!!!!!!");
				rd2.forward(request, response);

			}

		} catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
		}

	}

}