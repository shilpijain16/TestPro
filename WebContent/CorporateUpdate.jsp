<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/admin.js"></script>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
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

<%
String s1= request.getParameter("x");
session.setAttribute("x",s1);
int x=Integer.parseInt(s1);
PreparedStatement pst;
Connection conn;
ResultSet rs;
String F_NAME=null; 
String L_NAME=null; 
String ADDRESS=null; 
String MOB_NO=null; 
 
String GENDER=null; 
String CO_EMAIL=null; 

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
	 conn = DriverManager.getConnection(URL, "Train5","chennai");

pst = conn.prepareStatement("select * from CORPORATE_REG1 where CO_ID=? ");
pst.setInt(1,x);

rs = pst.executeQuery();

if(rs.next())
{
 F_NAME= rs.getString("F_NAME"); 
 L_NAME= rs.getString("L_NAME");
 ADDRESS= rs.getString("ADDRESS");
MOB_NO= rs.getString("MOB_NO");
 
 
 GENDER= rs.getString("GENDER");
 CO_EMAIL= rs.getString("CO_EMAIL");

}

} catch (Exception ex) {
out.println(ex);
}

%>
<h1><center> Corporate Update</center></h1>
<form action="CorporateUpdate" method="get" name="myform" onsubmit="return(validation3());">
<table border="2" cellspacing="2" cellpadding="2" height="300" width="450"align="center">
<tr><td>First Name:</td>
<td><input type="text" name="F_NAME" size="20" value="<%=F_NAME %>" ></td></tr>
<tr><td>Last Name:</td>
<td><input type="text" name="L_NAME"size="20" value="<%=L_NAME %>"></td></tr>
<tr><td>Address:</td>
<td><input type="text" name="ADDRESS"size="20" value="<%=ADDRESS %>"></td></tr>

<tr><td>Mobile:</td>
<td><input type="text" name="MOB_NO" value="<%=MOB_NO %>"></td></tr>
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



<tr><td>Gender</td>
<td><input type="text" name="GENDER"size="20" value="<%=GENDER %>"></td></tr>

<tr><td>Email</td>
<td><input type="text" name="CO_EMAIL" value="<%=CO_EMAIL %>"></td></tr>


</table><br>


<div style="text-align: center"> 

<input type="submit" value="Update"/>
<input type="Reset" value="Reset"/>
<input type="Submit" value="Cancel"/>
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