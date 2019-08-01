<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Models.*"%>
<%@page import="com.cognizant.PatientHealthMonitoringPortal.Dao.*"%>
<%@page import="java.sql.Connection"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

body
{
  margin:0 auto;
  padding:0;
  background-color:#EFE8E2;
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
      width: 400px;
    margin: 50px;
    margin-left: 650px;
    margin-right: 650px;
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
 /*  padding-top:100px;
    width:1200px; */
  height:auto;
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
table
{
cellspacing:10;	
  clear:both;
  width:95%;
  color:#5B5B5B;
  font-size:22	px;
  padding-top:2px;
  padding-bottom:10px;
  border-bottom:2px dashed #ccc;
    width: 100%;
}
th{
height: 50px;}
.right
{
  text-align:center;
}
.center
{
	/*   text-align:center;
	  padding-top:20px; */
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
<style>

body
{
  margin:0 auto;
  padding:0;
  background-color:#EFE8E2;
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
      width: 400px;
    margin: 50px;
    margin-left: 650px;
    margin-right: 650px;
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
 /*  padding-top:100px;
    width:1200px; */
  height:auto;
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
table
{
cellspacing:10;	
  clear:both;
  width:95%;
  color:#5B5B5B;
  font-size:22	px;
  padding-top:2px;
  padding-bottom:10px;
  border-bottom:2px dashed #ccc;
    width: 100%;
}
th{
height: 50px;}
.right
{
  text-align:center;
}
.center
{
	/*   text-align:center;
	  padding-top:20px; */
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




</style>




</style>
<%
try{
Connection con=OracleDatabase.connect();
HttpSession hs=request.getSession();
 UserDetails user=( UserDetails )hs.getAttribute("user"); 
String a=user.getUserId();
PreparedStatement ps=con.prepareStatement("select * from Bloodcount_Values where user_id=? order by cdate desc");
ps.setString(1, a);

ResultSet rs=ps.executeQuery();

%>



  
 
  <div class="receipt" align="center">
  <div class="paper">
    <div class="title">Blood Count</div>
 
    <table cellspacing="40"  cellspacing="40" >
	 <tbody>
      <tr>

        
          <th>Patient Id</th>
          <th>WBCs</th>
          <th>RBCs</th>
          <th>Platelets</th>
          <th>Time</th>
          <th>Date</th>
          
        </tr>
  
 
  <%
  
  while(rs.next())
{
%>
  
   	<tr 1152*72>
        <td class="right"><%=rs.getString(1)%></td>
          <td class="right"><%=rs.getLong(2)%></td>
          <td class="right"><%=rs.getLong(3)%></td>
          <td class="right"><%=rs.getLong(4)%></td>
          <td class="right"><%=rs.getString(5)%></td>
          <td class="right"><%=rs.getDate(6)%></td>
        </tr>
   <%    }  
        }catch (Exception e2) {
	System.out.println(e2);
out.close();
}        
%>

  
       
   </tr>
      </tbody>
    </table>
    <br>
    <br>
    
    <br>
   	
      
      </form>
    </div>
  </div>
  
  <div>
</div>

