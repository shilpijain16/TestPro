<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.*,java.util.*,java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/admin.js"></script>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Corporate Profile</title>
</head>
<body>
<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart Bank</h1>

<%
ServletContext ctx=getServletContext();
Integer CO_ID = (Integer) ctx.getAttribute("CO_ID");
	
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
<%String ex=(String)request.getAttribute("ex");%>
<% String bid=(String)session.getAttribute("bid");
if((bid==null))
{
	bid="";
}
%>
<b><center> Add Biller Page</center></b>

<form action="BillerCheckServlet1" method="get" name="myform" onsubmit="return(validation5());" >
<table border="2" align="center">
<tr><td>Biller Id:</td>
<td><input type="text"name="B_ID" value="<%=bid %>" size="20"/>
<input type="submit" name="check" value="Check"/>
<% 
if(!(ex==null))
{%>
<%=ex%>
<% }%>
</td></tr>
</table>
</form>

<form action="AccountServlet"  method="get" name="myform1" onsubmit="return(validation6());">
<div id="account-form">
 
<div class="account-header">
 
</div>
<table border="2" cellspacing="2" cellpadding="2" height="300" width="450"align="center">

<tr><td>Account Name</td>
<td><select name="Account_Name">
<option value="Electricity"> Electricity</option>
<option value="Cafeteria"> Cafeteria</option>
<option value="Stationary">stationary </option>
<option value="WaterSupply"> WaterSupply</option>
</select></td>
</tr>
<tr><td>Currency</td>
<td><select name="Currency">
<option value="Rupees"> Rupees</option>
<option value="Euro"> Euro</option>
<option value="Dollar">Dollar </option>
<option value="Pound"> Pound</option>
</select></td>
<tr><td>Branch</td>
 
<td><input type="text" name="Branch" size="20"></td>
</tr>
<tr><td>Available Balance</td>
<td><input type="text" name="Available_Balance" size="20"></td>
</tr>
<tr><td>Opening Balance</td>
<td><input type="text" name="Opening_Balance" size="20"></td>
</tr>
 
</table><br>
<input type="hidden" name="id" value="<%=session.getAttribute("bid")%>" />
<div style="text-align: center"> 
 
<input type="submit" value="Submit"/>
<input type="Reset" value="Reset"/>
</div>
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