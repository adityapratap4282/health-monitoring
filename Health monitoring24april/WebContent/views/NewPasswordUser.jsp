<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"  type="text/css" href="css/bootstrap-css.css">



<head background-color="#85D6CB">
<script>
<%


HttpSession hs=request.getSession();
String id= (String)hs.getAttribute("id").toString();
hs.setAttribute("id",id);
%>

</script>
<div class="bg-image">
</div>
<div class="wrapper fadeInDown">
  <div id="formContent" style="width: 60%; max-width: 100%; height:70%;">
    <!-- Tabs Titles -->

    <!-- Icon -->
    
<h2 >Patient Health Monitoring Portal</h2>
         <div class="fadeInfirst">
   <img src="img/2.jpg" alt="Doctor" style="width:200px;height:200px;">

    </div>
    
 
    <!-- Login Form -->
    <form name="loginForm" method="post" autocomplete="on" action="NewPasswordUser" >

							
   <label> Create your new Password </label>
   <br>
   <input  type="password" id="password" class="fadeIn first" name="password1" placeholder="Enter Your New Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required >
 							 <br>
 							 <input  type="password" id="password" class="fadeIn second" name="password2" placeholder="Confrim Your New Password." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required>
	<br>
	<br>
	<input type="submit" class="fadeIn third" value="Submit">
	<br>
	<div  class="param-msg" style="color: red; margin-top: 10px; text-align:center;">
                                         ${param.errmsg2 }
		 </div>
	  <small class="fadeIn fourth" style="text-align: center;" >Must contain at least one number and one uppercase and lowercase letter,</small>
	<br>
		<small class="fadeIn fourth" style="text-align: center;" > and at least 8 or more characters. </small>
       
       
    
    
    
    </form>
    

    

  </div>
</div>
</head>
