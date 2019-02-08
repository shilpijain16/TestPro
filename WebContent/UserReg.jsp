<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<script type="text/javascript" src="js/admin.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User:</title>
</head>
<body>
<% 
String uname=(String)session.getAttribute("uname");
if((uname==null))
{
response.sendRedirect("Login.jsp");	
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
<li><h3><a href="BackServices.jsp">Services</a></h3></li>
<li><h3><a href="">Change Password</a></h3></li>

</div>


<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>

<b><center> Add User Page</center></b>
 <%String ex=(String)request.getAttribute("ex");%>
<% String uid=(String)session.getAttribute("uid");
if((uid==null))
{
	uid="";
}
%>

<form action="BackUserCheck" method="get">
<table border="2" align="center">
<tr><td>User_Id:</td>
<td><input type="text"name="U_ID" value="<%=uid %>" size="20"/>
<input type="submit" name="check" value="Check"/>
<%
if(!(ex==null))
{%>
<%=ex%>
<% }%>
</td></tr>
</table>
</form>
<form action="UserAddServlet" method="get" name="myform" onsubmit="return(validation3());">
<table border="2" cellspacing="2" cellpadding="2" height="300" width="450"align="center">

<tr><td>First Name:</td>
<td><input type="text" name="F_NAME" size="20"/></td></tr>
<tr><td>Last Name:</td>
<td><input type="text" name="L_NAME"size="20"/></td></tr>
<tr><td>Address:</td>
<td><textarea name="ADDRESS"></textarea></td></tr>
 
<tr><td>Mobile No.:</td>
<td><input type="text" name="MOB_NO"></td></tr>
<tr><td>City:</td>
<td><select name="CITY">
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
<tr><td>Birth Date</td>
<td><input type="text" name="DOB"></td></tr>
 
 
<tr><td>Gender</td>
<td>Male<input type="radio" name="GENDER"size="20" value="Male">
Female<input type="radio" name="GENDER"size="20" value="Female"></td>


</tr>
<tr><td>User Name</td>
<td><input type="text" name="USERNAME"size="20"></td></tr>
 
 <tr><td>Money Deposit</td>
<td><input type="text" name="MONEYDEPOSIT"size="20"></td></tr>
 
<tr><td>User Pass</td>
<td><input type="text" name="USERPASS"></td></tr>
 
<tr><td>Email</td>
<td><input type="text" name="U_EMAIL"></td></tr>
</table><br>
<input type="hidden" name="id" value="<%=session.getAttribute("uid")%>" />
<div style="text-align: center"> 
<input type="submit" value="Submit"/>
<input type="Reset" value="Reset"/>
<button type="button"  onclick="post1();">Cancel</button>
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