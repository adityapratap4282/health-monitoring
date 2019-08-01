<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <style type="text/css">
 
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
 </style> 

</head>
<body>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%

HttpSession hs=request.getSession();
 DoctorDetails user=( DoctorDetails )hs.getAttribute("user");
/* UserDetails user= (UserDetails)request.getAttribute("user");
request.setAttribute("user", user); */
%>

<jsp:include page="DoctorNav.jsp"></jsp:include>

<hr>
<div class="container bootstrap snippet"  style="    width: 1840px; max-width: 1840px; margin-left: 20px;">
    <div class="row">
  		<div class="col-sm-10"><h1 style="margin-right: 30%;     font-size: 22px; font-weight:800;      color: inherit;">Welcome <%=user.getfName() %>  (<%=user.getUserId()%>)</h1></div>
    	<!--  <div class="col-sm-2"><a href="/Health_monitoring/views/Logout" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>-->
    </div>
    <div class="row" style="margin-right: 50%;" >
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar" style="width: 300px; height: 150px; margin-right: 70%; ">
      <!--   <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload"> -->
      </div></hr><br>

               
         
        
               
        
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>

              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="<%=user.getfName() %>" title="enter your first name if any." >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="<%=user.getlName() %>" title="enter your last name if any." >
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Age</h4></label>
                              <input type="text" class="form-control" name="age" id="age" placeholder="<%=user.getAge() %>" title="enter your phone number if any." >
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="<%=user.getContactNo() %>" title="enter your mobile number if any." >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Registration No</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="<%=user.getEmailId() %>" title="enter your email." disabled>
                          </div>
                      </div>
                      
                     <div class="form-group">
                          <div class="col-xs-6">
                             <label for="gender"><h4>Gender</h4></label>
                              <input type="text" class="form-control" name="gender" id="gender" placeholder="<%=user.getGender() %>" title="enter your mobile number if any." >
                          </div>
                      </div>
                    
                      
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>City</h4></label>
                              <input type="text" class="form-control" id="location" placeholder="<%=user.getCity() %>" title="enter a location" disabled>
                          </div>
                      </div>
                    
                     <div class="form-group">
                          <div class="col-xs-6">
                             <label for="stae"><h4>state</h4></label>
                              <input type="text" class="form-control" name="state" id="state" placeholder="<%=user.getState() %>" title="enter your mobile number if any." disabled>
                          </div>
                      </div>
                    
                    
                        
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Edit</button>
                               	
                            </div>
                      </div>
              	</form>
              
              <hr>
              
          
               
             
              	</form>
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
                                                      



        
</body>
</html>