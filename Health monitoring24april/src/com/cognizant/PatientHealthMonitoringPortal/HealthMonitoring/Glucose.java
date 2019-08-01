package com.cognizant.PatientHealthMonitoringPortal.HealthMonitoring;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;
import com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails;


@WebServlet("/glucose")
public class Glucose extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Glucose() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		/*UserDetails u=(UserDetails)request.getAttribute("user");
		*/

HttpSession hs=request.getSession();
 UserDetails u=( UserDetails )hs.getAttribute("user");
 
		String a=u.getUserId().toString();
		String b=request.getParameter("Time");
		float c=Float.parseFloat(request.getParameter("BGL"));  
		LocalDate ld =LocalDate.now();
		Date date = java.sql.Date.valueOf(ld);
try{  
			
			Connection con=OracleDatabase.connect();
			
			PreparedStatement ps=con.prepareStatement(  
			"insert into glucose_values values(?,?,?,?)");  
			ps.setString(1,a);  
			ps.setString(2,b);  
			ps.setFloat(3,c);  
			ps.setDate(4, date);
			
			
			int i1=ps.executeUpdate();  
			if(i1>0)
			 request.getRequestDispatcher("GlucoseReading.jsp?Msg=Details recorded successfully..!!!").forward(request, response);
		else
			 request.getRequestDispatcher("GlucoseReading.jsp?errMsg=Enter details correctly.").forward(request, response);


		
		
	} catch (Exception ex) {
		RequestDispatcher rd = request.getRequestDispatcher("error.jsp?errMsg=" + ex.getMessage());
		rd.forward(request, response);
	out.close();
		doGet(request, response);
	}

}
}
