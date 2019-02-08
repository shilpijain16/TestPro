<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="ErrorPage.jsp"  %>
    <%@page import="java.io.*,java.util.*,java.sql.*" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart Bank</h1>
<div id="wrap">
 <ul class="navbar">
<li><a href="UserProfile.jsp">Home</a></li>
<li><a href="UserLogin.jsp">Logout</a>
<li><a href="MoneyDeposit.jsp">Money Deposit</a>
<li><a href="CustomerBills.jsp">Pay Bills</a>
 </ul>
</div>
</div>

<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>

 <form action="CustomerTransaction" method="get" >
<div id="account-form">

<div class="account-header">
<h1><center>Billing Transaction</center></h1><br>
<table  cellspacing="2" cellpadding="2" height="150" width="400"align="center">

<tr><td>Account Name</td>
<td ><select name="Account_Name" style="width: 220px">
<option value="Internet">Internet Bill</option>
<option value="Mobile">Mobile Bill</option>


</tr>


<tr><td>Amount</td>
<td><input type="text" name="AMOUNT" size="32"/></td>
</tr>
</table><br>
<div style="text-align: center"> 

<input type="submit" value="Create"/>
<input type="submit" value="Reject"/>

</div>
</form>




</div>
<br><br><br><br><br><br><br><br>
<div id="wrap4" style="width: 1330px">
<h4><b>Copyright ©BankTeam</b><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.facebook.com" title="Facebook"><img src="images/fbb.gif" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.Twitter.com" align="right" title="Twitter"><img src="images/twit.jpg" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.LinkedIn.com" title="LinkedIn"><img src="images/linke.jpg" align="right" height="25px" width="20px"></a>
</h4>


</div></body>

</html>