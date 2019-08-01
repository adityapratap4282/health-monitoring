
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
<script SRC="query/jquery.js" TYPE="text/javascript"></script>

<link rel="stylesheet"  type="text/css" href="css/PatientChoice.css">

<link rel="stylesheet"  type="text/css" href="css/bootstrap-css.css"">
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
from
{
background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
    }
.to
{

    }
</style>
<script>
<%
/* 
UserDetails user= (UserDetails)request.getSession().getAttribute("user");

request.getSession().setAttribute("user", user);

 */
 HttpSession hs=request.getSession();
 DoctorDetails user=( DoctorDetails )hs.getAttribute("user");
 
%>
</script>
</head>

<body>

<jsp:include page="DoctorNav.jsp"></jsp:include>

<div class="wrapper fadeInDown" style="padding: 0 px;">
	
		<div id="formContent" style="padding-top: 10px;width:500px;margin-top: 10px;font-size: 16 px;">
			<div class="fadeInfirst">
<form name="loginForm2"  method="post"
					autocomplete="on" action="DoctorServlet.jsp" id="signup">
					<div class="input-field">
					<br>
						Enter patient id:
						<br>
						<input  id="login" class="second" type="text" name="pid"
							placeholder="">
						<br>
						From:
						
						<input  id="login" class="second" type="date" name="from"
							placeholder="from" style="background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
   
    border: 2px solid #f6f6f6;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;"><br> 
						
						To: 
						&nbsp;<input  id="login" class="second" type="date" name="to"
							placeholder="to" style="background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;

    border: 2px solid #f6f6f6;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;"><br> 
						
						<br>
							<input type="submit" class=" fourth" value="Search"  style="     margin: 5px 20px 5px 20px;"> 
					</div>
					</div>
				</form>
				</div>
				</div>
				





</body>
<script type="text/javascript">
$(document).ready(function(){
       
    window.history.pushState(null, "", window.location.href);        
    window.onpopstate = function() {
        window.history.pushState(null, "", window.location.href);
    };
});


</script>
</html>