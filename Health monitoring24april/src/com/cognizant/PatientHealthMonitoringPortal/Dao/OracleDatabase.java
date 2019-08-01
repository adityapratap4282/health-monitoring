package com.cognizant.PatientHealthMonitoringPortal.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleDatabase {

	public static Connection connect() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "cognizant");

		}

		catch (Exception ex) {
		}
		return con;

	}

}