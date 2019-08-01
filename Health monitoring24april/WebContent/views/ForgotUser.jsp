<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" type="text/css" href="css/bootstrap-css.css">




<head background-color="#85D6CB">
<div class="bg-image"></div>

<div class="wrapper fadeInDown">
	<div id="formContent" style="">
		<!-- Tabs Titles -->

      <h2 >Patient Health Monitoring Portal</h2>
		<!-- Icon -->
		<div class="fadeIn first">
			<img src="img/2.jpg" alt="Doctor"
				style="width: 200px; height: 200px;">

		</div>


		<!-- Login Form -->
		<form name="loginForm" method="post" 
			action="ForgotUser">
			<input type="text" id="login" class="fadeIn second" name="login"
				placeholder="Enter Patient ID.">
			
			
			<!-- <div class="form-row" > -->

				<!-- form-group end.// -->
				<div class="fadeIn third" style="align:center;     text-align: center;">
				<br>
					<label >Security Question</label> <br>
					 <select  id="inputState"
									class="form-control" name="question"   style=" align:center;     text-align: center; width: 70%; left:40px;     margin-left: 70px;">
						<option selected> Choose...</option>
						<option>What is your nick name?</option>
						<option>What is your pet's name?</option>
						<option>What is your mother's name?</option>
						<option>Which is your first company?</option>
					</select>
				</div>
				
				<div class="fadeIn fourth" style="align:center;">
				<br> <input type="text" 
						name="answer" placeholder="Enter your security answer">
				</div>
				
				 <div  class="param-msg" style="color: red; margin-top: 10px; text-align:center;">
                                         ${param.errMsg }
		 </div>
				<!-- form-group end.// -->
		<!-- 	</div> -->


			<input type="submit" class="fadeIn fifth" value="Next">
			
			
			 <a href="LoginPage.jsp"><input type="button" class="fadeIn fourth" value="Login"  formaction="LoginPage.jsp" > </a>





		</form>




	</div>
</div>
</head>
