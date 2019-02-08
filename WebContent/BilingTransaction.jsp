<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.*,java.util.*,java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Corporate Profile</title>
</head>
<body>
<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart Bank</h1>

<%
Integer CO_ID = (Integer) session.getAttribute("CO_ID");
	
String CO_USERNAME = (String) session.getAttribute("CO_USERNAME");
String DEPT_NAME = (String) session.getAttribute("DEPT_NAME");

if(DEPT_NAME.equals("Account"))
{%>
	<div id="wrap">
	 <ul class="navbar">
	<li><a href="WelcomeForm.jsp">Home</a></li>

	<li><a href="#">Biller</a>
	<ul>
	  <li><a href="AddBiller.jsp" >Add Biller</a></li>
	
	  <li><a href="BilingTransaction.jsp">Biller Transaction</a></li>
	</ul>         
	</li>
	<li><a href="CorporateLogin.jsp">Logout</a>    
	</li>
	 </ul>
	</div>
	

<% } 
else
{%>
<div id="wrap">
 <ul class="navbar">
<li><a href="WelcomeForm.jsp">Home</a></li>
<li><a href="FrontWelcome.jsp">Logout</a>        
</li>
 </ul>
</div>



<% }

%>
</div>

<form action="TransactionServlet" method="get" >
<div id="account-form">

<div class="account-header">
<h1><center>Billing Transaction</center></h1><br>
<table border="2" cellspacing="2" cellpadding="2" height="150" width="400"align="center">
<tr><td>BID</td>
<td><input type="text" name="B_ID" size="20"/></td>
</tr>

<td>
<tr><td>Account Name</td>
<td><select name="Account_Name">
<option value="Electricity">Electricity </option>
<option value="Cafeteria">Cafeteria</option>
<option value="Stationary">Stationary</option>
<option value="WaterSupply">WaterSupply</option>
<option value="TRANSPORT">TRANSPORT</option>

</tr>


<tr><td>Amount</td>
<td><input type="text" name="AMOUNT" size="20"/></td>
</tr>
</table><br>
<div style="text-align: center"> 

<input type="submit" value="Create"/>
<input type="submit" value="Reject"/>

</div>
</form>

<div id="wrap4">
<h4><b>Copyright ©BankTeam.All Rights Reserved</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.facebook.com" title="Facebook"><img src="images/fbb.gif" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.Twitter.com" align="right" title="Twitter"><img src="images/twit.jpg" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.LinkedIn.com" title="LinkedIn"><img src="images/linke.jpg" align="right" height="25px" width="20px"></a>
</h4>


</div></body>
</html>