<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.UserDetails"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.*"%>

<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap2">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="css/bootstrap-css.css">

<script>
<%
HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user");
%>

function Validate() {
	
	if (document.bmi.height.value == "" ||  (document.bmi.height.value <= 0 || document.bmi.height.value >= 200)) {
		alert("Please provide correct Height!");
		document.bmi.height.style.borderColor="red";
		
		return false;
	}else
		document.bmi.height.style.borderColor="green";
	
	

	if (document.bmi.weight.value == ""  ||  (document.bmi.weight.value <= 0 || document.bmi.weight.value >= 250)) {
		alert("Please provide correct Weight!");
		document.bmi.weight.style.borderColor="red";
		document.bmi.weight.focus();
		return false;
	}else
		document.bmi.weight.style.borderColor="green";

	return true;
}

</script>
</head>


<jsp:include page="UserNav.jsp"></jsp:include>  

<body background-color="#C02D0E"  width="100%">
<%-- <div class="topnav">

  <a class="active" href="views/PatientChoice.jsp"><i class="fa fa-home"></i><span>Home</span></a>
  <a href="views/PatientProfile.jsp"><i class="fa fa-cogs"></i><span>Profile</span></a>
  <a href="#contact"></a>
  <h3 style="  font-size: 18px;font-weight: 600; width:90%;   height: 50px;   text-align: right; color:black; margin-top:12px;">
  Welcome <%=user.getfName() %>
  </h3>
 
</div> --%>
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->
			<h2>BMI calculator!</h2>
			<!-- Icon -->
			<div class="fadeIn first">
				<img src="img/2.jpg" alt="Doctor" style="width: 200px; height: 200px;">

				<!-- Login Form -->
				
				<form action="BMI_Details" method="post" name="bmi" onsubmit="return Validate()" autocomplete="on">
				
					<input type="text" name="id" placeholder="<%=user.getUserId()%>"
						readonly> 
			 
						<input type="number" name="height"
						class="fadeIn second" placeholder="Enter Height in centimeters" title=" 1 foot= 30.48 cm  " step="0.01"  > 
						<input type="number" class="fadeIn third" step="0.01"
						name="weight" placeholder="Enter Weight in kg" 
						>
						<input
						type="submit" class="fadeIn fourth" value="Calculate"> 

				</form>

			</div>
		</div>
</body>
</html>


