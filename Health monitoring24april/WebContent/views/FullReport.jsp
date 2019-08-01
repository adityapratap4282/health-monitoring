<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Dao.*"%>
<%@page import="java.sql.Connection"%>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

body
{
  margin:0 auto;
  padding:0;
  background-color:#EFE8E2;`
  font-family:tahoma;
}
.paid
{
 display:none;
  width:300px;
  margin:0 auto;
    background-color:#fff;
  text-align:center;
  padding-top:25px;
  border-radius:0px 0px 10px 10px;
  padding-bottom:25px; 
  color:#00773D;
  line-height:30px;
}
.paid p
{
  background-image:url("http://dc455.4shared.com/download/VILITso0/tsid20130720-183900-9216b81f/check.png");
  background-repeat:no-repeat;
  background-position:left center;
  padding-left:30px;
  width:190px;
  margin:0 auto;
}
.container
{
  width:350px;
  margin:50px auto;
}
.tab
{
  width:350px;
  margin:0 auto;
  height:10px;
  background-color:#2B2929;
  border-radius:50px
}
.receipt
{
   background-color:#FAFAF9;
  padding-top:20px;
    width:600px;
  height:600px;
  margin:auto;
  border-radius:5px 5px 50px 50px;
  -moz-box-shadow: 0 10px 30px rgba(0,0,0,0.3);
-webkit-box-shadow: 0 10px 30px rgba(0,0,0,0.3);
box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}
.paper
{ 
  border-top:1px dashed #ccc;
  width:96%;
  margin:0 auto;
}
.title
{
  color:#00773D;
  margin-top:20px;
  margin-left:10px;
  font-weight:bold;
  align:center;
  font-size:26px;
  line-height:30px;
  text-align:center;
  
}
.date
{
  color:#00773D;
  margin-top:20px;
  margin-right:10px;
  font-weight:lighter;
  float:right;
  font-size:12px;
    line-height:30px;
}

.right
{
  text-align:right;
}
.center
{
  text-align:center;
  padding-top:20px;
}
input[type=button]
{
  background-color:#00874C;
  outlie:none;
  
  border:1px solid #ccc;
  
  padding: 15px 32px;border-radius:5px;
  font-weight:bold;
  color:#fff;
  padding-left:30px;
  background-image:url("http://dc707.4shared.com/img/zr6_o80l/s3/13ffd4de138/cart.png");
  background-repeat:no-repeat;
  background-position:5px center;
}
input[type=button]:hover
{
  -moz-box-shadow: 0 10px 30px rgba(0,0,0,0.3);
-webkit-box-shadow: 0 10px 30px rgba(0,0,0,0.3);
box-shadow: 0 10px 30px rgba(0,0,0,0.3);
  cursor:pointer;
  color:#f0f0f0;
}
.barcode
{
    height: 10px;
  width: 0;
  box-shadow:1px 0 0 1px #343434, 5px 0 0 1px #343434, 10px 0 0 1px #343434, 11px 0 0 1px #343434, 15px 0 0 1px #343434, 18px 0 0 1px #343434, 22px 0 0 1px #343434, 23px 0 0 1px #343434, 26px 0 0 1px #343434, 30px 0 0 1px #343434, 35px 0 0 1px #343434, 37px 0 0 1px #343434, 41px 0 0 1px #343434, 44px 0 0 1px #343434, 47px 0 0 1px #343434, 51px 0 0 1px #343434, 56px 0 0 1px #343434, 59px 0 0 1px #343434, 64px 0 0 1px #343434, 68px 0 0 1px #343434, 72px 0 0 1px #343434, 74px 0 0 1px #343434, 77px 0 0 1px #343434, 81px 0 0 1px #343434;
  display:inline-block;
  margin-right:85px;
}
.sign
{
text-align:center;
}
.thankyou
{
  line-height:14px;
  font-size:10px;
  margin-top:5px;
  color:#5B5B5B;
  width:100%;
}


h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table
{
cellspacing:10;	
  clear:both;
  width:95%;
  margin:10 auto;
  color:black;
  font-size:22	px;
  font-weight:300;
  padding-bottom:10px;
  border-bottom:2px dashed #ccc;
}
table{
  width:100%;
  table-layout: fixed;
      border-bottom: 10px;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
  background-color:#85D6CB;
      margin: 10px;
 }
.tbl-content{
  
  overflow-x:auto;
      margin: 10px;
 /*  border: 1px solid rgba(255,255,255,0.3); */
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 800;
  font-size: 16px;
  color: black;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 400;
  font-size: 17px;
  color: #2d245d;;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
 /*  background: -webkit-linear-gradient(left, #85D6CB, #85D6CB);
  background: linear-gradient(to right, #85D6CB, #85D6CB);
  */
  background-color: white; 
  font-family: 'Roboto', sans-serif;
  
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}


</style>
 <%
try{
	
Connection con=OracleDatabase.connect();

HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user");
 
 String a=user.getUserId();
 
PreparedStatement ps=con.prepareStatement
("select * from  user_details where user_id=?");
ps.setString(1, a);

ResultSet rs=ps.executeQuery();

%>


<jsp:include page="UserNav.jsp" ></jsp:include>

<section>
  <!--for demo wrap-->
  <h1>Patient Report</h1>
  <div class="tbl-header">
  
    <table cellpadding="0" cellspacing="0" border="0">
      <thead  style="
  border-bottom: solid 2px black;">
        <tr>
      
         <th>Patient Name</th>
          <th>Surname</th>
          <th>Age</th>
          
          <th>Gender</th>
       
       <!-- 
          <th>BMI</th>
          <th>WBCs</th>
          <th>RBCs</th>
          <th>Platelets</th>
          <th>Blood Glucose level</th>  -->
        </tr>
      </thead>
    </table>
 

    <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <%
  
  while(rs.next())
{
%>  
        <td><%=rs.getString(1)%></td>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getInt(3)%></td>
          
          <td><%=rs.getString(6)%></td><%-- 
          <td><%=rs.getLong(4)%></td>
          <td><%=rs.getLong(5)%></td>
          <td><%=rs.getLong(6)%></td> --%>
          
        </tr>
   <%    }  
        }catch (Exception e2) {
	System.out.println(e2);
out.close();
}        
%>
       
        
       
<!--     </tbody>
    </table>
    <br>
    <br>
    
    <br>
  
 
</div>
 -->

     </tr>
      </tbody>
    </table>
  </div>
</section> 
              <div   class="param-errmsg" style="color: green; margin-top: 22px; font-size: 22px; text-align:center;">
                                         ${param.Msg }
                                  </div>
           <div   class="param-errmsg" style="color: red; margin-top: 22px; text-align:center; font-size: 22px;">
                                         ${param.errMsg }
                                  </div>

</html>
