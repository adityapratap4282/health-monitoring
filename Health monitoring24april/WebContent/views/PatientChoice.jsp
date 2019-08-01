<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
<script SRC="query/jquery.js" TYPE="text/javascript"></script>
<link rel="stylesheet"  type="text/css" href="css/PatientChoice.css">
 <style>
  body{
  background-image:url("img/11.jpg");
  background-size:cover;
  		background-attachment:fixed;
		overflow:scroll;
}


.topnav {    position: fixed;
    top: 0;
    left: 0;
    z-index: 9999;
    width: 100%;
    height: 50px;
    margin-top: 0;
    position: fixed;
    overflow: hidden;
    background-color: #85D6CB;
    font-size: 20px;
    font-weight: 800;
}

.topnav a{
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #03A08D;
  font-size: 20px;
  font-family:cursive;
  color: black;
}

element.style {
     width: auto;
    position: fixed;
    left: 1770px;
    overflow: auto;
    text-align: right;
    right: 100px;
    top: -4px;
    height: 50px color:black;
    font-size: 1.4em;
    /* top: 3px; */
}

body, html {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  
  background-image:url("img/11.jpg");
  background-size:cover;

		background-attachment:fixed;
		overflow:scroll;
}
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
*, ::after, ::before {
    box-sizing: border-box;
}*, ::after, ::before {
    box-sizing: border-box;
}
div {
    display: block;
}
 
  body{
    background-image:url("img/11.jpg");
  background-size:cover; 

}

@media (min-width: 1200px)
.container {
    width: 1870 px;
}

@media (min-width: 1200px)
.container {
    max-width: 1940px;
}

 
element.style {
    margin-right: 100px;
}
.row {
    margin-right: -25px;
    margin: 100 px;
    margin-left: -15px;
    margin-top: 30px;
}
.card::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 100%;
    height: 100%;
    border-radius: 15px;
    /* background: rgba(0, 0, 0, 0.6); */
    z-index: 2;
    transition: 0.5s;
    opacity: 0;
}
</style>
<script>
<%

 HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user");
 
%>
</script>
</head>

<body>

<jsp:include page="UserNav.jsp"></jsp:include>

<div class="wrapper">

<a href="BMI.jsp">	
  <div class="card"><img src="img/5.jpg">
    <div class="info">
      <h1 class="h" style="color:Black ; text-decoration: none;">BMI CALCULATOR</h1>
      <p class="p1" style="color:Black ; text-decoration: none;">Check your BMI.</p>
    </div>
  </div>
 </a>
 
  <a href="BloodCount.jsp">
  <div class="card"><img src="img/3.jpg">
    <div class="info">
      <h1 class="h" style="color:Black ; text-decoration: none;">Blood Count</h1>
      <p class="p1" style="color:Black ; text-decoration: none;">Check your blood count.</p>
    </div>
  </div>
  </a>
  
  <a href="GlucoseReading.jsp">
  <div class="card"><img src="img/9.jpg">
    <div class="info">
      <h1 class="h" style="color:Black ; text-decoration: none;">Glucose Reading</h1>
      <p class="p1" style="color:Black ; text-decoration: none;">Check your Glucose Reading.</p>  
    </div>
  </div>
  </a>
  
</div>


</body>

</html>