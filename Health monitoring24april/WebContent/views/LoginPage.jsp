<html>

<head>
<title>Login Page</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script SRC="query/jquery.js" TYPE="text/javascript"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" type="text/css" href="/Health_monitoring24april/views/css/bootstrap-css.css">
<style>
.submit-button_Paitent {
	padding: 16px !important;
}

.submit-button_Doctor {
	padding: 16px !important;
}

.col-lg-4 {
	float: left !important;
}

#button_Doctor {
	position: relative !important;
	left: 134px !important;
}

* {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	background: #175690;
	font-family: 'open sans', sans-serif;
}

.forms {
	background: #fff;
	max-width: 500px;
	overflow: hidden;
	position: relative;
	padding: 0;
}

.forms h1 {
	padding: 0 0 20px 0;
	font-size: 26px;
	color: #666;
	font-weight: lighter;
	text-align: center;
}

.forms form {
	padding: 30px;
	padding-bottom: 0px;
}

#signup {
	display: none;
}

.forms .tab-group {
	list-style: none;
	padding: 0;
	margin: 0;
}

.forms .tab-group:after {
	content: "";
	display: table;
	clear: both;
}

.forms .tab-group li a {
	display: block;
	text-decoration: none;
	padding: 15px;
	background: #e5e6e7;
	color: #888;
	font-size: 20px;
	float: left;
	width: 50%;
	text-align: center;
	border-top: 3px solid transparent;
	-moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

.forms .tab-group li a:hover {
	background: #dedfdf;
	color: #666;
}

.forms .tab-group .active a {
	background: #fff;
	color: #444;
	border-top: 3px solid #85D6CB;
}
/* .forms input {
       font-size: 16px;
       display: block;
       width: 100%;
       padding: 10px 20px;
       border: 1px solid #ddd;
       color: #666;
       border-radius: 0;
       margin-bottom: 10px;
       -moz-transition: all 0.4s ease-in-out;
       -o-transition: all 0.4s ease-in-out;
       -webkit-transition: all 0.4s ease-in-out;
       transition: all 0.4s ease-in-out;
}
 */
.forms input:focus {
	outline: 0;
	border-color: #2e5ed7;
}

.forms label {
	font-size: 16px;
	font-weight: normal;
	color: #666;
	margin-bottom: 5px;
	display: block;
}
/* .forms .button {
       border: 0;
       outline: none;
       border-radius: 0;
       padding: 10px 0;
       font-size: 18px;
       font-weight: 300;
       text-transform: uppercase;
       letter-spacing: 2px;
       background: #73cf41;
       color: #ffffff;
       cursor: pointer;
       -moz-transition: all 0.4s ease-in-out;
       -o-transition: all 0.4s ease-in-out;
       -webkit-transition: all 0.4s ease-in-out;
       transition: all 0.4s ease-in-out;
} */
.submit_Patient {
	width: 80% !important;
	position: relative;
	left: 25px;
	top: -27px !important;
	display: block !important;
	border-radius: 5px !important;
}

.forms .button:hover, .button:focus {
	background: #56ae26;
}

.text-p {
	text-align: right;
}

.text-p a {
	color: #1383ea;
}

body {
	background-image: url("/Health_monitoring24april/views/img/11.jpg");
	font-family: "Poppins", sans-serif;
	background-repeat: no-repeat;
	background-color: #85D6CB;
	background-size: cover;
}

@import url(https://fonts.googleapis.com/css?family=Arvo:700);

@import url(https://fonts.googleapis.com/css?family=Seaweed+Script);

.plate {
	width: 410px;
	margin: 10% auto;
}

.shadow {
	padding-top: 10px;
	color: #85D6CB;
	font-family: Arvo;
	font-weight: bold;
	text-shadow: -3px -3px 0 #222, 3px -3px 0 #222, -3px 3px 0 #222, 3px 3px
		0 #222, 4px 4px 0 #fff, 5px 5px 0 #fff, 6px 6px 0 #fff, 7px 7px 0 #fff;
	line-height: 0.8em;
	letter-spacing: 0.1em;
	transform: scaleY(0.7);
	-webkit-transform: scaleY(0.7);
	-moz-transform: scaleY(0.7);
	margin: 0;
	text-align: center;
}

.script {
	font-family: "Seaweed Script";
	color: #fff;
	text-align: center;
	font-size: 40px;
	position: relative;
	margin: 0;
}

.script span {
	background-color: #222;
	padding: 0 0.3em;
}

.script:before {
	content: "";
	display: block;
	position: absolute;
	z-index: -1;
	top: 50%;
	width: 100%;
	border-bottom: 3px solid #fff;
}

.text1 {
	font-size: 60px;
}

.text2 {
	font-size: 69px;
}

.text3 {
	font-size: 100px;
}

p {
	margin-top: 0;
	margin-bottom: 0;
}
</style>

</head>
<body background-color="#85D6CB">
	<div class="wrapper fadeInDown" style="padding: 0 px;">
		<p class="shadow text2">Patient Health</p>
		<p class="shadow text3">Monitoring Portal</p>
		<br>
		<div id="formContent" style="width: 500px;">
			<div class="fadeInfirst">
				<div class="param-msg"
					style="color: green; margin-top: 10px; text-align: center; color: #000db9; font-size: 24px; font-weight: 500;">
					${param.Msg }</div>
				<img src="/Health_monitoring24april/views/img/2.jpg" alt="Doctor"
					style="width: 200px; height: 200px;">
			</div>
			<div class="forms" style="width: 500px;">
				<ul class="tab-group">
					<li class="tab active"><a href="#loginPatient">As Patient</a></li>
					<li class="tab"><a href="#signup">As Doctor</a></li>
				</ul>

				<form name="loginForm" id="loginPatient" method="post"
					autocomplete="on" action="LoginFilter.do">
					<input type="text" id="login" class=" first" name="login"
						placeholder="Enter Patient ID."><br> <br> <input
						type="password" id="password" class=" third" name="password"
						placeholder="Enter Your Password."><br> <br> <input
						type="submit" class=" fourth" value="Log In"> <a
						href="SignUpPage.jsp"><input type="button" class=" fourth"
						value="Sign Up" formaction="SignUpPage.jsp"> </a>
					<div class="param-errmsg"
						style="margin-top: 10px; text-align: center; color: Red;
	/* margin-top: 10px; */ margin-top: -10px; font-size: 18px; padding-bottom: 10px; text-align: center;">
						${param.errMsg }</div>

					<div id="formFooter" style="margin: 1px; margin-bottom: 10px;">
						<a class="underlineHover" href="ForgotUser.jsp">Forgot Password?</a>
					</div>

				</form>

				<form name="loginForm2" method="post" autocomplete="on"
					action="LoginFilterDoctor.do" id="signup">
					<div class="input-field">
						<input type="text" id="login" class="second" name="login"
							placeholder="Enter Doctor ID."><br> <br> <input
							type="password" id="password" class="third" name="password"
							placeholder="Enter Your Password."><br> <br> <input
							type="submit" class=" fourth" value="Log In"> <a
							href="SignUpPageDoctor.jsp"><input type="button" class=" fourth"
							value="Sign Up" formaction="SignUpPageDoctor.jsp"> </a>

						<div class="param-errmsg"
							style="margin-top: 10px; text-align: center; color: Red;
	/* margin-top: 10px; */ margin-top: -10px; font-size: 18px; padding-bottom: 10px; text-align: center;">
							${param.errMsg }</div>
						<div id="formFooter" style="margin: 1px; margin-bottom: 10px;">
							<a class="underlineHover" href="ForgotDoctor.jsp">Forgot Password?</a>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>

</body>

<!-- 	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->
<script type="text/javascript">
	$(document).ready(function() {
		$('.tab a').on('click', function(e) {
			e.preventDefault();

			$(this).parent().addClass('active');
			$(this).parent().siblings().removeClass('active');

			var href = $(this).attr('href');
			$('.forms > form').hide();
			$(href).fadeIn(500);
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {

		window.history.pushState(null, "", window.location.href);
		window.onpopstate = function() {
			window.history.pushState(null, "", window.location.href);
		};
	});
</script>

</html>




