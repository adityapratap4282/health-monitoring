<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<link rel="stylesheet" href="css/bootstrap-css.css">
<style>
body{
 background-image:url("img/11.jpg");
 }
</style>
<script>
function validate() {
	
	if (document.bgl.BGL.value == "" ||  (document.bgl.BGL.value < 0   || document.bgl.BGL.value >= 160 )) {
		alert("Please provide correct Glucose Level!");
		document.bgl.BGL.style.borderColor="red";
		
		return false;
	}else
		document.bgl.BGL.style.borderColor="green";


	if (document.bgl.Time.value == "") {
		alert("Please provide Time!");
		document.bgl.Time.style.borderColor="red";
		
		return false;
	}else
		document.bgl.Time.style.borderColor="green";
	
	
	return true;
}
</script>
 <%/* 
 UserDetails user=(UserDetails)request.getAttribute("user");
 request.setAttribute("user", user); */

HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user");
%>

</head>
<jsp:include page="UserNav.jsp"></jsp:include>
<body >
<div class="wrapper fadeInDown">
<div id="formContent">

	<h2>Blood glucose</h2>
	
	
    <form action="Glucose" method="post" name="bgl" onsubmit="return validate()">
    
	  <input type="text" name="PatientId" class="fadeIn first" placeholder="<%=user.getUserId()%>"  readonly> 
    
      
      <br><span style="  color: #7F8C8D;  font-family: "Poppins", sans-serif;">Time of the day </span>
      <input type="time"  class="fadeIn time" name="Time" placeholder="Time of the day" title="Time of the day"> 
      <input type="number"  class="fadeIn third" name="BGL" placeholder="Blood Glucose Level (mg/dL)" title="Normal Range-(70-120)" step="0.01">
      <input type="submit" class="fadeIn fourth" value="Submit">
      
      <div   class="param-errmsg" style="color: green; text-align:center;  margin-bottom: 10px;  padding:10px; font-size: 20px; font-style: italic;">
                                      ${param.Msg }  
                                  </div>
      <div   class="param-errmsg" style="color: Red; text-align:center;  margin-bottom: 10px;  padding:10px; font-size: 20px; font-style: italic;">
                                      ${param.errMsg }  
                                  </div>
    </form>
</div>
</div>
</body>
	