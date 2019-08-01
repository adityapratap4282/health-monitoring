<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
	function validate() {

		if (document.docReg.firstname.value == "" ) {
			alert("Please provide your First Name!");
			document.docReg.firstname.focus();
			document.docReg.firstname.style.borderColor="red";
			return false;
		}
		else
			document.docReg.firstname.style.borderColor="green";
			
		
		if (!(document.docReg.firstname.value).match(/^[a-zA-Z]+$/)) {
			alert("Please provide Correct First Name!");
			document.docReg.firstname.focus();
			document.docReg.firstname.style.borderColor="red";
			return false;
		}
		else
			document.docReg.firstname.style.borderColor="green";
		
		
			
		
			
		if (document.docReg.age.value == "") {
			alert("Please provide your Age!");
			document.docReg.age.focus();
			document.docReg.age.style.borderColor="red";
			return false;
		}else
			document.docReg.age.style.borderColor="green";

		if (document.docReg.contactno.value == ""
				|| isNaN(document.docReg.contactno.value)
				|| document.docReg.contactno.value.length != 10) {
			alert("Please provide a valid contact no.(9876543210)");
			document.docReg.contactno.focus();
			document.docReg.contactno.style.borderColor="red";
						return false;
		}else
			document.docReg.contactno.style.borderColor="green";

		var email = document.getElementById('emailid');
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (!filter.test(email.value)) {
			alert('Please provide a valid email address');
			email.focus();
			email.style.borderColor="red";
			email.focus;
			return false;
		}else
			document.docReg.emailid.style.borderColor="green";

		if ((docReg.gender[0].checked == false)
				&& (docReg.gender[1].checked == false)) {
			alert("Please choose your Gender: Male or Female");
			return false;
		}else
			document.docReg.gender.style.borderColor="green";
			
		if (document.docReg.city.value == "") {
			alert("Please provide your City!");
			document.docReg.city.focus();
			document.docReg.city.style.borderColor="red";
			
			return false;
		}else
			document.docReg.city.style.borderColor="green";
			
		if (document.docReg.state.value == "Choose...") {
			alert("Please provide your Select State!");
			document.docReg.state.focus();
			document.docReg.state.style.borderColor="red";
			
			return false;
		}else
			document.docReg.state.style.borderColor="green";
		
		if (document.docReg.question.value == "Choose...") {
			alert("Please provide your question!");
			document.docReg.question.focus();
			document.docReg.question.style.borderColor="red";
			
			return false;
		}else
			document.docReg.question.style.borderColor="green";
		
		if (document.docReg.answer.value == "") {
			alert("Please provide your answer!");
			document.docReg.answer.focus();
			document.docReg.answer.style.borderColor="red";
			
			return false;
		}else
			document.docReg.answer.style.borderColor="green";
			
		if (document.docReg.password.value == "") {
			alert("Please provide your password!");
			document.docReg.password.focus();
			document.docReg.password.style.borderColor="red";
			
			return false;
		}else
			document.docReg.answer.style.borderColor="green";

		return true;

	}
</script>

<!------ Include the above in your HEAD tag ---------->
<style>
body {
	background-image: url("img/11.jpg");
	background-size: cover;
}
</style>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>

<div class="container">
	<br>
	<p class="text-center"></p>
	<hr>
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="card">
				<header class="card-header"> <a href="LoginPage.jsp"
					class="float-right btn btn-outline-primary mt-1"  >Log in</a>
				<h4 class="card-title mt-2" style="color: #85D6CB; margin-top: 10px;  
				font-size: 26px; font-weight: 600; display: elevation:inline-block; ">Registration Form</h4>
				</header>
				<article class="card-body">


				<form action="SignUpFilter.do" name="docReg" method="post"
					onsubmit="return validate()" autocomplete="on">
					<div class="form-row">
						
						<div class="col form-group">
						
							<label>First name </label> <input type="text"
								class="form-control" name="firstname" placeholder="" >
						</div>
						<!-- form-group end.// -->
						<div class="col form-group">
							<label>Last name</label> <input type="text"  class="form-control"
								name="lastname" placeholder=" " >
						</div>
						<!-- form-group end.// -->
						<div class="col form-group">
							<label>Age</label> <input type="number" min="1" max="150"
								name="age" class="form-control" placeholder="" >
						</div>
					</div>
					<!-- form-row end.// -->
					<div class="form-group">
						<label>Contact Number</label> <input type="number"
							requiredpattern="[0-9]{10}" minlength="10" maxlength="10"
							class="form-control" name="contactno" placeholder="" >
					</div>
					<div class="form-group">
						<label>Email address</label> <input type="text" id="emailid"
							class="form-control" placeholder="" name="emailid" > <small
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
					<!-- form-group end.// -->
					<div class="form-group">
						<label>Gender</label> <select name="gender" class="form-control"
							type="text">
							<option class="form-check-input" value="Male">
									Male </option>
							<option value="Female" class="form-check form-check-inline"
								type="text" selected>Female</option>
						</select>
					</div>
					<!-- form-group end.// -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>City</label> <input type="text" class="form-control"
								name="city" >
						</div>
						<!-- form-group end.// -->
						<div class="form-group col-md-6">
							<label>State</label> <select id="inputState" class="form-control"
								name="state" >
								<option selected> Choose...</option>
								<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
								<option value="Andhra Pradesh">Andhra Pradesh</option>
								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
								<option value="Assam">Assam</option>
								<option value="Bihar">Bihar</option>
								<option value="Chandigarh">Chandigarh</option>
								<option value="Chhattisgarh">Chhattisgarh</option>
								<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
								<option value="Daman and Diu">Daman and Diu</option>
								<option value="Delhi">Delhi</option>
								<option value="Goa">Goa</option>
								<option value="Gujarat">Gujarat</option>
								<option value="Haryana">Haryana</option>
								<option value="Himachal Pradesh">Himachal Pradesh</option>
								<option value="Jammu and Kashmir">Jammu and Kashmir</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Karnataka">Karnataka</option>
								<option value="Kerala">Kerala</option>
								<option value="Lakshadweep">Lakshadweep</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Maharashtra">Maharashtra</option>
								<option value="Manipur">Manipur</option>
								<option value="Meghalaya">Meghalaya</option>
								<option value="Mizoram">Mizoram</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Orissa">Orissa</option>
								<option value="Pondicherry">Pondicherry</option>
								<option value="Punjab">Punjab</option>
								<option value="Rajasthan">Rajasthan</option>
								<option value="Sikkim">Sikkim</option>
								<option value="Tamil Nadu">Tamil Nadu</option>
								<option value="Tripura">Tripura</option>
								<option value="Uttaranchal">Uttaranchal</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
								<option value="West Bengal">West Bengal</option>
							</select>
						</div>
						<!-- form-group end.// -->
					</div>
					<!-- form-row.// -->
					<!-- 		<div class="form-group">
							<label>User ID</label> <input type="text" class="form-control"
								name="userid" placeholder="i.e ABC1234/abc1234"
								pattern="[A-Za-z]{3}[0-9]{4}" title="Of format: ABC1234/abc1234"
								minlength="7" maxlength="7" required>
						</div> -->
						<div class="form-row">
							
							
							
							<!-- form-group end.// -->
							<div class="form-group col-md-6">
								<label>Security Question</label> <select id="inputState"
									class="form-control" name="question" >
									<option selected > Choose...</option>
									<option>What is your nick name?</option>
									<option>What is your pet's name?</option>
									<option >What is your mother's name?</option>
									<option >Which is your first company?</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Answer</label> <input type="text" class="form-control"
									name="answer" placeholder="Enter your security answer" >
							</div>
							<!-- form-group end.// -->
						</div>
						
						
						
						
					<div class="form-group">
						<label>Create password</label> <input class="form-control"
							name="password" type="password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							>
							<small
							class="form-text text-muted">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
					</div>
					<!-- form-group end.// -->
					

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block" style="background-color: #85D6CB; border-color:#85D6CB;    padding: 10px; margin-top: 5px;margin-bottom: 5px;     transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;  ">
							Register</button>
					</div>
					<!-- form-group// -->
					<div
						style="color: #D63759; margin-top: 10px; text-align: center; font-size: 26px; font-weight: 600; text-transform: uppercase; display: elevation:inline-block; font-variant: small-caps;">
						${param.errmsg }</div>


				</form>
				</article>
				<!-- card-body end .// -->
				<div class="border-top card-body text-center">
					Have an account? <a href="LoginPage.jsp">Log In</a>
				</div>
			</div>
			<!-- card.// -->
		</div>
		<!-- col.//-->

	</div>
	<!-- row.//-->


</div>
<!--container end.//-->

<br>
<br>
</html>
