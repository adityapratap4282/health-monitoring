  <%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400' rel='stylesheet' type='text/css'>
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<html>

<head>
<style>
  body{
   background-image:url("img/11.jpg");
  
}

  
.topnav {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9999;
  width: 100%;
  height: 50px;
  margin-top:0;
  position:fixed;
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
}

</style>
<script>
function f()
{
  javascript:window.history.forward(1);
}
<%

HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user");
 
%>
</script>
</head>
<body>
<div  id="navi" class="topnav">

  <a href="PatientChoice.jsp"><i class="fa fa-home" style="font-size:1.4em;"></i></a>
  <a href="PatientProfile.jsp" ><i style="top:3px;"></i><span>Profile</span></a>
  <a href="ForgotUser.jsp" ><i style="top:3px;"></i><span>Change Password</span></a>
  <a href="Risk.do" ><i style="top:3px;"></i><span>Diabetes Risk</span></a>
  
  <a onclick="f()" href="logout" style="width:max-content;   left:1770px;   overflow:auto;  text-align: right; right:0; top:-4px;height:50px color:black;font-size:17px;     float: right;
    color: black; text-align: center; padding: 14px 16px;text-decoration: none;font-size: 18px; font-weight:900;"><i class="fa fa-power-off"></i>  <%=user.getfName() %> <i>(<%=user.getUserId()%>)</i></a>
  
</div>

</body>
</html>

