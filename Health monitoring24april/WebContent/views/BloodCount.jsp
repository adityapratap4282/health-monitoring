<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
<link rel="stylesheet" href="css/bootstrap-css.css">
<style >
body{
 background-image:url("css/img/11.jpg");
 }
 </style>
 
<script>
<%
HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user");
%>
function validate() {
	if (document.bcd.Time.value == "") {
		alert("Please provide Time");
		document.bcd.Time.style.borderColor="red";
		document.bcd.Time.focus();
		return false;
	}else
		document.bcd.Time.style.borderColor="green";
	
	if (document.bcd.WBC.value == "" || (document.bcd.WBC.value <= 0 )) {
		alert("Please provide correct WBC count");
		document.bcd.WBC.style.borderColor="red";
		document.bcd.WBC.innerHtml="Please provide WBC count";
		return false;
	}else
		document.bcd.WBC.style.borderColor="green";

	if (document.bcd.RBC.value == "" || (document.bcd.RBC.value <= 0 )) {
		alert("Please provide correct RBC count");
		document.bcd.RBC.style.borderColor="red";
		document.bcd.RBC.focus();
		return false;
	}else
		document.bcd.RBC.style.borderColor="green";
	
	if (document.bcd.platlets.value == "" || (document.bcd.platlets.value <= 0 )) {
		alert("Please provide correct platelets count");
		document.bcd.platlets.style.borderColor="red";
		document.bcd.platlets.focus();
		return false;
	}else
		document.bcd.platlets.style.borderColor="green";
	
	return true;
}


</script>
</head>
<body >
<jsp:include page="UserNav.jsp"></jsp:include>
<div class="bg-image">
</div>
<div class="wrapper fadeInDown">
  <div id="formContent">

    <!-- Tabs Titles -->
 <h2 >Blood Count</h2>
    <!-- Icon -->
   
    <div class="fadeIn first">
   <img src="img/2.jpg" alt="Doctor" style="width:200px;height:200px;">
    </div>
 
    <!-- Login Form -->
    <form action="BloodDetails" method="post" class="fadeIn second" name="bcd" onsubmit="return validate()">
    

	  <input type="text" name="PatientId"  placeholder="<%=user.getUserId()%>"  title="Patient-id" readonly> 
	  
	 <%--  <input type="text" name="date" class="fadeIn first" placeholder="<%=date%>"  readonly> 
	  --%> 
      <br><span style="  color: #7F8C8D;  font-family: "Poppins", sans-serif;">Time of the day </span>
      <input type="time"  class="fadeIn time" name="Time" placeholder="Time of the day" title="Time of the day">
      <input type="number"  class="fadeIn third" name="WBC" placeholder="WBCs (White blood cells)-(cells/mcL) " title="per microliter of blood">
      <input type="number"  class="fadeIn fourth" name="RBC" placeholder="RBCs (Red blood cells)-(cells/mcL)" title="per microliter of blood">    
      <input type="text"  class="fadeIn fourth" name="platlets" placeholder="Platelets-(cells/mcL)"  title="per microliter of blood">
          
    
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
</html>





