<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Dao.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body {
	background-image: url("img/11.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-color: #f6f6ff;
	font-family: Calibri, Myriad;
}

#main {
	padding: 8px;
	margin: auto;
}

table.timecard {
	margin: auto;
	width: 800px;
	max-width: 800px;
	border-collapse: collapse;
	border: 1px solid #fff; /*for older IE*/
	border-style: hidden;
}

table.timecard caption {
	background-color: #85D6CB;
	color: #fff;
	font-size: x-large;
	font-weight: bold;
	letter-spacing: .3em;
	padding: 3px;
}

table.timecard thead th {
	padding: 10px;
	background-color: #85D6CB;
	font-size: large;
}

table.timecard thead th#thDay {
	width: 40%;
}

table.timecard thead th#thRegular, table.timecard thead th#thOvertime,
	table.timecard thead th#thTotal {
	width: 20%;
}

table.timecard th, table.timecard td {
	padding: 8px;
	border-width: 1px;
	border-style: dashed;
	border-color: white;
}

table.timecard td {
	text-align: center;
}

table.timecard tbody th {
	text-align: left;
	font-weight: normal;
}

table.timecard tfoot {
	font-weight: bold;
	font-size: large;
	background-color: #687886;
	color: #fff;
}

table.timecard tr.even {
	background-color: #85D6CB;
}
</style>

</head>
<body>
	<%
		HttpSession hs = request.getSession();
		DoctorDetails user = (DoctorDetails) hs.getAttribute("user");
	%>
	<jsp:include page="DoctorNav.jsp"></jsp:include>
	<%
		String id = request.getParameter("pid");
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		try {

			String str = "03-31-1996";

			float s = 0;
			int s1 = 0, s2 = 0, s3 = 0;
			Connection con = OracleDatabase.connect();
			PreparedStatement ps = con.prepareStatement("select * from user_details where user_id=?");
			ps.setString(1, id);
	%>
	<br>

	<div id="main">
		<table class="timecard">
			<!-- <table width=50% border=1  ALIGN='center' bgcolor='white'  cellspacing=2px cellpadding=2px border-color: blue;  > -->
			<caption>USER DETAILS :</caption>
			<thead>

				<%
					ResultSet rs = ps.executeQuery();
						ResultSetMetaData rsmd = rs.getMetaData();
						int total = rsmd.getColumnCount();
				%>

				<%
					for (int i = 1; i <= 3; i++) {
				%>

				<th><%=rsmd.getColumnName(i)%></th>


				<%
					}
				%>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr ALIGN='center' class="odd">
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getInt(3)%></td>
					<td><%=rs.getString(10)%></td>

					<%
						}
					%>
				</tr>
				<!-- 	</table>  -->
			</tbody>
			<!-- </table> -->
			</div>
			<%
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			%>

			<br>
			<%
				try {
					Connection con = OracleDatabase.connect();
					/*				PreparedStatement ps = con.prepareStatement("select * from glucose_values where user_id=?");*/
					DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
					LocalDate date = LocalDate.parse(from, formatter);
					java.sql.Date sqlDate = java.sql.Date.valueOf(date);

					LocalDate date2 = LocalDate.parse(to, formatter);
					java.sql.Date sqlDate2 = java.sql.Date.valueOf(date2);

					PreparedStatement ps = con.prepareStatement(
							"select * from glucose_Values where user_id=? and localdate between ? and ? order by localdate desc,time desc");

					ps.setString(1, id);

					ps.setDate(2, sqlDate);

					ps.setDate(3, sqlDate2);
			%>



			<%
				ResultSet rs = ps.executeQuery();
					ResultSetMetaData rsmd = rs.getMetaData();
					int total = rsmd.getColumnCount();
			%>

			<div id="main">
				<table class="timecard">
					<!-- 	<table width=50% border=2  ALIGN='center' bgcolor='#85D6CB'  cellspacing=10px cellpadding=10px border-color: blue; >
 -->
					<caption>BLOOD GLUCOSE :</caption>
					<thead>

						<%
							for (int i = 1; i <= total; i++) {
						%>
						<th><%=rsmd.getColumnName(i)%></th>

						<%
							}
						%>

					</thead>
					<tbody>
						<%
							while (rs.next()) {
						%>
						<tr ALIGN='center' class="even">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getLong(3)%></td>
							<td><%=rs.getDate(4)%> <%
 	}
 %> <!--   </table>  -->
						</tr>
						<%
							} catch (Exception e2) {
								e2.printStackTrace();
							}
						%>
						<br>

						<%
							try {
								Connection con = OracleDatabase.connect();
								/*				PreparedStatement ps = con.prepareStatement("select * from glucose_values where user_id=?");*/
								DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
								LocalDate date = LocalDate.parse(from, formatter);
								java.sql.Date sqlDate = java.sql.Date.valueOf(date);

								LocalDate date2 = LocalDate.parse(to, formatter);
								java.sql.Date sqlDate2 = java.sql.Date.valueOf(date2);

								PreparedStatement ps = con.prepareStatement(
										"select * from bmi_Values where user_id=? and localdate between ? and ? order by localdate desc,time desc");

								ps.setString(1, id);

								ps.setDate(2, sqlDate);

								ps.setDate(3, sqlDate2);
						%>



						<%
							ResultSet rs = ps.executeQuery();
								ResultSetMetaData rsmd = rs.getMetaData();
								int total = rsmd.getColumnCount();
						%>

						<
						<!-- div id="main"> -->
						<table class="timecard">
							<!-- <table width=50% border=1  ALIGN='center' bgcolor='white'  cellspacing=2px cellpadding=2px border-color: blue;  > -->
							<caption>BMI :</caption>
							<thead>
								<%
									for (int i = 1; i <= total; i++) {
								%>
								<th><%=rsmd.getColumnName(i)%></th>

								<%
									}
								%>
							</thead>
							<tbody>
								<%
									while (rs.next()) {
								%>
								<tr ALIGN='center' class="even">
									<td><%=rs.getString(1)%></td>
									<td><%=rs.getFloat(2)%></td>
									<td><%=rs.getFloat(3)%></td>
									<td><%=rs.getFloat(4)%></td>
									<td><%=rs.getString(5)%></td>
									<td><%=rs.getString(6)%> <%
 	}
 %> <!--    </table>  -->
								</tr>
								<%
									} catch (Exception e2) {
										e2.printStackTrace();
									}
								%>
								<br>

								<br>

								<%
									try {
										Connection con = OracleDatabase.connect();
										/*				PreparedStatement ps = con.prepareStatement("select * from glucose_values where user_id=?");*/
										DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
										LocalDate date = LocalDate.parse(from, formatter);
										java.sql.Date sqlDate = java.sql.Date.valueOf(date);

										LocalDate date2 = LocalDate.parse(to, formatter);
										java.sql.Date sqlDate2 = java.sql.Date.valueOf(date2);

										PreparedStatement ps = con.prepareStatement(
												"select * from bloodcount_Values where user_id=? and cdate between ? and ? order by cdate desc,ctime desc");

										ps.setString(1, id);

										ps.setDate(2, sqlDate);

										ps.setDate(3, sqlDate2);
								%>



								<%
									ResultSet rs = ps.executeQuery();
										ResultSetMetaData rsmd = rs.getMetaData();
										int total = rsmd.getColumnCount();
								%>

								<!-- <div id="main"> -->
								<br>
								<table class="timecard">
									<!-- <table width=50% border=1  ALIGN='center' bgcolor='white'  cellspacing=2px cellpadding=2px border-color: blue;  > -->
									<caption>BLOOD COUNT :</caption>
									<thead>

										<%
											for (int i = 1; i <= total; i++) {
										%>
										<th><%=rsmd.getColumnName(i)%></th>
										<%
											}
										%>
									</thead>
									<tbody>
										<%
											while (rs.next()) {
										%>

										<tr class="even">
											<td><%=rs.getString(1)%></td>
											<td><%=rs.getLong(2)%></td>
											<td><%=rs.getLong(3)%></td>
											<td><%=rs.getLong(4)%></td>
											<td><%=rs.getString(5)%></td>
											<td><%=rs.getDate(6)%> <%
 	}
 %> <!--   </table> 
 -->
										</tr>
										<%
											} catch (Exception e2) {
												e2.printStackTrace();
											}
										%>
										<br>
										<br>
										<br>
</body>
</html>