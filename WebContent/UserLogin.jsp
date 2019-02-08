<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<link rel="stylesheet" type="text/css" href="css/login1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserLogin:</title>
</head>
<body >


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

<!-- Start: Login Form-->

<form method="get" action="UserValidation">
	<div id="login-form">
		
		<div class="login-header">
			<h1>User Login</h1>
		</div>		

		<div class="form-body">
			<input type="text"   name="USERNAME" />
			<input type="password" name="USERPASS" />		</div>
		<div class="footer">
		<input type="submit" value="Login" />
		<input type="reset" value="Reset" /><br><br>
		<a href="UserRegistration.jsp">New User?</a>
	</div>

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