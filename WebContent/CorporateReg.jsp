<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/admin.js">
</script>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String uname=(String)session.getAttribute("uname");
if((uname==null))
{
response.sendRedirect("Login.jsp");	
}
%>
<%String ex=(String)request.getAttribute("ex");%>
<% String coid=(String)session.getAttribute("coid");
if((coid==null))
{
	coid="";
}
%>

<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart Bank(Back Office)</h1>
<div id="wrap">
 <ul class="navbar">
<li><a href="WelcomeForm.jsp">Home</a></li>
<li><a href="WelcomeForm.jsp">Corporate</a>
<ul>
  <li><a href="CorporateReg.jsp">Add Corporate</a></li>
  
  <li><a href="CorporateList.jsp">View Corporate List</a></li>
</ul>         
</li>
<li><a href="#">Customer</a>
<ul>
  <li><a href="UserReg.jsp" >Add User</a></li>
  <li><a href="UserList.jsp">View User List</a></li>
</ul>         
</li>
<li><a href="WelcomeForm.jsp">Biller</a>
<ul>
 
  <li><a href="BillerList.jsp">Biller List</a></li>
 
</ul>         
</li>
<li><a href="Logout.jsp">Logout</a>        
</li>
 </ul>
</div>
</div>


<div id="wrap2" height:2000px;>
<ul><li><h3><a href="BackAbout1.jsp">AboutUs</a></h3></li>
<li><h3><a href="">Services</a></h3></li>

</div>


<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>

<b><center> Add Corporate Page</center></b> 

<form action="BackCorporateCheck" method="get"  >
<table  align="left" cellpadding="2" cellspacing="2">
<tr><td style="font-family: Bookman Old Style;font-size: medium">Corporate Id:</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"name="CO_ID" value="<%=coid %>" size="26"/>
<input type="submit" name="check" value="Check"/>
<% 
if(!(ex==null))
{%>
<%=ex%>
<% }%>
</td></tr>
</table>
</form>
<br><br>
<form action="CorporateAddServlet" method="get" name="myform" onsubmit="return(validation2());">
<table  cellspacing="2" cellpadding="2" height="300" width="450"align="left">
<tr><td style="font-family: Bookman Old Style;font-size: medium">First Name:</td>
<td><input type="text" name="F_NAME" size="26"></td></tr>
<tr><td style="font-family: Bookman Old Style;font-size: medium">Last Name:</td>
<td><input type="text" name="L_NAME" size="26"></td></tr>
<tr><td style="font-family: Bookman Old Style;font-size: medium">Address:</td>
<td><textarea name="ADDRESS"></textarea></td></tr>
 
<tr><td style="font-family: Bookman Old Style;font-size: medium">Mobile No.:</td>
<td><input type="text" name="MOB_NO" size="26"></td></tr>
<tr><td style="font-family: Bookman Old Style;font-size: medium">City:</td>
<td><select  id="ddlView" name="CITY" style="width: 182px;" >

<option value="Delhi"> Delhi</option>
<option value="Meerut"> Meerut</option>
<option value="Bareily"> Bareily</option>
<option value="Rewari"> Rewari</option>
<option value="Chandigarh">Chandigarh</option>
</select></td>
</tr>
 
<tr><td style="font-family: Bookman Old Style;font-size: medium"> State:</td>
<td><select name="STATE" style="width: 182px;"  >
<option value="Delhi"> Delhi</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="haryana">Haryana</option>
<option value="Punjab"> Punjab</option>
</select></td>
</tr>
<tr><td style="font-family: Bookman Old Style;font-size: medium">Dob</td>
<td><input type="text" name="DOB" size="26"></td></tr>
 
 
<tr><td style="font-family: Bookman Old Style;font-size: medium">Gender</td>
<td>Male<input type="radio" name="GENDER"size="26" value="Male">
Female<input type="radio" name="GENDER"size="26" value="Female"></td>
</tr>
<tr><td style="font-family: Bookman Old Style;font-size: medium">Co_Username</td>
<td><input type="text" name="CO_USERNAME"size="26"/></td></tr>
 
 <tr><td style="font-family: Bookman Old Style;font-size: medium">Money Deposit</td>
<td><input type="text" name="MONEYDEPOSIT"size="26"/></td></tr>
 
<tr><td style="font-family: Bookman Old Style;font-size: medium">Co_Password</td>
<td><input type="password" name="CO_PASS" size="26"/></td></tr>
 
<tr><td style="font-family: Bookman Old Style;font-size: medium">Co_Email</td>
<td><input type="text" name="CO_EMAIL" size="26"/></td></tr>

<tr><td style="font-family: Bookman Old Style;font-size: medium">Department Name</td>
<td><input type="text" name="DEPT_NAME" size="26"/></td></tr>
</table><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <input type="hidden" name="id" value="<%=session.getAttribute("coid")%>" />
 
<div style="text-align: left;"> 
 
<input type="submit" value="Submit"/>
<input type="Reset" value="Reset"/>
<button type="button"  onclick="post();">Cancel</button>
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