<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<style> body
{
  margin:0 auto;
  padding:0;
  background-color:white;`
  font-family:tahoma;
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession hs = request.getSession();
	UserDetails user = (UserDetails) hs.getAttribute("user");
%>

			<form class="form" action="##" method="post" id="registrationForm">
						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name"><h4>First name</h4></label> <input
									type="text" class="form-control" name="first_name"
									id="first_name" placeholder="<%=user.getfName()%>"disabled
									title="enter your first name if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name"><h4>Last name</h4></label> <input
									type="text" class="form-control" name="last_name"
									id="last_name" placeholder="<%=user.getlName()%>" disabled
									title="enter your last name if any.">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="phone"><h4>Age</h4></label> <input type="text"
									class="form-control" name="age" id="age"
									placeholder="<%=user.getAge()%>" disabled
									title="enter your phone number if any.">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-6">
								<label for="mobile"><h4>Mobile</h4></label> <input type="text"
									class="form-control" name="mobile" id="mobile"
									placeholder="<%=user.getContactNo()%>" disabled
									title="enter your mobile number if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="email"><h4>Email</h4></label> <input type="email"
									class="form-control" name="email" id="email" disabled
									placeholder="<%=user.getEmailId()%>" title="enter your email."
									disabled>
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-6">
								<label for="gender"><h4>Gender</h4></label> <input type="text"
									class="form-control" name="gender" id="gender" disabled
									placeholder="<%=user.getGender()%>"
									title="enter your mobile number if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="email"><h4>City</h4></label> <input type="text"
									class="form-control" id="location"
									placeholder="<%=user.getCity()%>" title="enter a location"
									disabled>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6">
								<label for="stae"><h4>state</h4></label> <input type="text"
									class="form-control" name="state" id="state"
									placeholder="<%=user.getState()%>"
									title="enter your mobile number if any." disabled>
							</div>
						</div>
				</form>
					<hr>
					</form>
				</div>
</body>
</html>