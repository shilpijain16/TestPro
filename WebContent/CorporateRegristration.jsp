<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript" src="js/admin.js"></script>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart Bank</h1>
<div id="wrap">
 <ul class="navbar">
<li><a href="FrontWelcome.jsp">Home</a></li>
<li><a href="UserLogin.jsp">Customer</a>
<li><a href="CorporateLogin.jsp">Corporate</a>
<li><a href="Login.jsp">AdminAccess?</a>
 </ul>
</div>
</div>
<div id="wrap2" height:2000px;>
<ul><li><h3><a href="About1.jsp">AboutUs</a></h3></li>
<li><h3><a href="Services.jsp">Services</a></h3></li>
<li><h3><a href="ContactUs.jsp">ContactUs</a></h3></li>
</div>


<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>

<%String ex=(String)request.getAttribute("ex");%>
<% String coid=(String)session.getAttribute("coid");
if((coid==null))
{
	coid="";
}
%>


<b><center> Add Corporate Page</center></b>

<form action="CheckServlet" method="get"  >
<table border="2" align="center">
<tr><td>Corporate_Id:</td>
<td><input type="text"name="CO_ID" value="<%=coid %>" size="20"/>
<input type="submit" name="check" value="Check"/>
<% 
if(!(ex==null))
{%>
<%=ex%>
<% }%>
</td></tr>
</table>
</form>
<form action="FrontCorporateAdd" method="get" name="myform" onsubmit="return(validation2());">
<table border="2" cellspacing="2" cellpadding="2" height="300" width="450"align="center">
 


<tr><td>First Name:</td>
<td><input type="text" name="F_NAME" size="20"></td></tr>
<tr><td>Last Name:</td>
<td><input type="text" name="L_NAME" size="20"></td></tr>
<tr><td>Address:</td>
<td><textarea name="ADDRESS"></textarea></td></tr>
 
<tr><td>Mobile No.:</td>
<td><input type="text" name="MOB_NO"></td></tr>
<tr><td>City:</td>
<td><select  id="ddlView" name="CITY">
<option value="Select">Select City</option>
<option value="Delhi"> Delhi</option>
<option value="Meerut"> Meerut</option>
<option value="Bareily"> Bareily</option>
<option value="Rewari"> Rewari</option>
<option value="Chandigarh">Chandigarh</option>
</select></td>
</tr>
 
<tr><td>State:</td>
<td><select name="STATE">
<option value="Delhi"> Delhi</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="haryana">Haryana</option>
<option value="Punjab"> Punjab</option>
</select></td>
</tr>
<tr><td>Dob</td>
<td><input type="text" name="DOB"></td></tr>
 <tr><td>Gender</td>
<td>Male<input type="radio" name="GENDER"size="20" value="Male">
Female<input type="radio" name="GENDER"size="20" value="Female"></td>
</tr>
<tr><td>Co_Username</td>
<td><input type="text" name="CO_USERNAME"size="20"></td></tr>
 
 <tr><td>Money Deposit</td>
<td><input type="text" name="MONEYDEPOSIT"size="20"></td></tr>
 
<tr><td>Co_Password</td>
<td><input type="text" name="CO_PASS"></td></tr>
 
<tr><td>Co_Email</td>
<td><input type="text" name="CO_EMAIL"></td></tr>

<tr><td>Department Name</td>
<td><select style="width:150px;" name=DEPTNAME >
<option>HR</option>
<option>Account</option>
<option>Finance</option>
</select></td></tr>
</table><br>
 <input type="hidden" name="id" value="<%=session.getAttribute("coid")%>" />
 
<div style="text-align: center"> 
 
<input type="submit"  value="Submit"/>
<input type="Reset" value="Reset"/>
<input type="submit"   value="Cancel"/>
</div>
 
 
</form>




</div>

<div id="wrap4">
<h4><b>Copyright ©BankTeam.All Rights Reserved</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.facebook.com" title="Facebook"><img src="images/fbb.gif" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.Twitter.com" align="right" title="Twitter"><img src="images/twit.jpg" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.LinkedIn.com" title="LinkedIn"><img src="images/linke.jpg" align="right" height="25px" width="20px"></a>
</h4>


</div></body>
</html>