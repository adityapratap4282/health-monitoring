
package com.cognizant.PatientHealthMonitoringPortal.Services;

import java.sql.*;

import com.cognizant.PatientHealthMonitoringPortal.Dao.OracleDatabase;
import com.cognizant.PatientHealthMonitoringPortal.Models.DoctorDetails;

public class ServiceDoctor {
	public static String getUserId() {
		int userid1 = 0;
		String userid = "";

		try {

			Connection con = OracleDatabase.connect();

			PreparedStatement ps = null;

			// checking the user_id in database
			String query = "select cast (substr(max(user_id),3) as number) from doctor_details";

			ps = con.prepareStatement(query, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = ps.executeQuery();

			if (rs.next() == false) {

				userid1 = 0;

			} else {
				userid1 = rs.getInt(1);
				System.out.println(userid1);
			}
			userid1 = userid1 + 1;

			userid = "D-";
			userid = userid + String.format("%04d", userid1);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return userid;

	}

	public static void addUser(DoctorDetails u) {
		try {
			Connection con = OracleDatabase.connect();

			PreparedStatement ps = null;

			// adding user data to database

			String query1 = "insert into doctor_details values(?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query1);

			ps.setString(1, u.getfName());
			ps.setString(2, u.getlName());
			ps.setInt(3, u.getAge());
			ps.setLong(4, u.getContactNo());
			ps.setString(5, u.getEmailId());
			ps.setString(6, u.getGender());
			ps.setString(7, u.getCity());
			ps.setString(8, u.getState());
			ps.setString(9, u.getPassword());
			ps.setString(10, u.getUserId());
			ps.setString(11, u.getSecurityquestion());
			ps.setString(12, u.getSecurityanswer());

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static DoctorDetails checkUser(String uid, String pwd) throws Exception {
		DoctorDetails ud = null;

		// try
		// {

		Connection con = OracleDatabase.connect();
		String query = "select * from doctor_details where user_id=? and password=?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, uid);
		ps.setString(2, pwd);

		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			ud = new DoctorDetails(rs.getString(10), rs.getString(1), rs.getString(2), rs.getInt(3), rs.getLong(4),
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
					rs.getString(11), rs.getString(12));

		}

		/*
		 * } catch (Exception e) { // e.printStackTrace();
		 * 
		 * 
		 * 
		 * 
		 * }
		 */

		return ud;

	}

}
