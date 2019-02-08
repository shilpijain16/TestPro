<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<li><a href="MoneyDeposit.jsp">Money Deposit</a>
<li><a href="PayBills.jsp">Pay Bills</a>
<li><a href="UserLogin.jsp">Logout</a>

 </ul>
</div>
</div>





<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>



<form action="UserAmountServlet">
<h2><center> Amount Deposit</center></h2>
<table align="center" cellspacing="5" cellpadding="10" border="1">
<tr>
<td>Enter Amount</td>
<td><input type="Text" name="MONEYDEPOSIT"/></td>
</tr><br>
 
</table>
<br>
<br>

<center> 
<input type="submit" value="submit"/>

 
<input type="reset" value="reset"/>
</center>
</form>
<br>
<br><br><br><br><br><br><br><br><br><br><br>
 <div id="wrap4" style="width: 1320px">
<h4><b>Copyright ©BankTeam.All Rights Reserved</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.facebook.com" title="Facebook"><img src="images/fbb.gif" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.Twitter.com" align="right" title="Twitter"><img src="images/twit.jpg" align="right" height="25px" width="20px"></a>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.LinkedIn.com" title="LinkedIn"><img src="images/linke.jpg" align="right" height="25px" width="20px"></a>
</h4>


</div></body>
</html>