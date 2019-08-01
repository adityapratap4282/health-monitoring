package com.cognizant.PatientHealthMonitoringPortal.Forgot;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;

public class NewPasswordDoctor extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession hs = request.getSession();
		String id = (String) hs.getAttribute("id").toString();

		String pass1 = request.getParameter("password1");

		String pass2 = request.getParameter("password2");

		try {
			if (pass1.equals(pass2)) {
				Connection con = OracleDatabase.connect();
				PreparedStatement ps = con.prepareStatement("update doctor_details set password=? where user_id=?");
				ps.setString(1, pass1);
				ps.setString(2, id);
				int i = ps.executeUpdate();
				if (i > 0) {
					RequestDispatcher rd = request
							.getRequestDispatcher("LoginPage.jsp?Msg=Password Changed Successfully...!!!");
					rd.forward(request, response);

				}
			} else {
				RequestDispatcher rd = request
						.getRequestDispatcher("NewPasswordDoctor.jsp?errMsg=Password Doesn't match...!!!");
				rd.forward(request, response);

			}

		} catch (Exception ex) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
			rd.forward(request, response);
		}

	}

}