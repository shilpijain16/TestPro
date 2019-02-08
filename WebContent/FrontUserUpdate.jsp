<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.*,java.util.*,java.sql.*" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
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
<li><a href="UserProfile.jsp">Home</a></li>
<li><a href="UserLogin.jsp">Logout</a>
 </ul>
</div>
</div>

<div id="wrap2" height:2000px;>
<ul><li><h3><a href="About1.jsp">AboutUs</a></h3></li>
<li><h3><a href="Services.jsp">Services</a></h3></li>
<li><h3><a href="ContactUs.jsp">ContactUs</a></h3></li>
</div>

<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>
 <%

                    int uid = (Integer) session.getAttribute("uid");
 	
                    String username = (String) session.getAttribute("username");
                    
					Connection conn=null;
					PreparedStatement pst=null;
                    ResultSet rs = null;
                    try {

                    	Class.forName("oracle.jdbc.driver.OracleDriver");
            			String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
            			 conn = DriverManager.getConnection(URL, "Train5","chennai");
                    	 pst = conn.prepareStatement("select * from USER_REG2 where U_ID=?");
                    	 pst.setInt(1,uid);
                    	 rs = pst.executeQuery();

                        while (rs.next()) {
                        	
        %>
         <form action="FrontUserUpdate" method="get" name="myform" onsubmit="return(validation3());">
		 <table border="1" cellspacing="2" cellpadding="2" height="300" width="450"align="center">
		 <tr><td>User_ID:</td>
		 <td><input type="text" style="background-color: white;color:grey;" value="<%= rs.getInt("U_ID")%>" readonly="readonly"/></td> 
		 </tr>
		 <tr><td>First Name:</td>
		 <td><input type="text" name="F_NAME" value="<%= rs.getString("F_NAME")%>"/></td></tr>
		 <tr><td>Last Name:</td>
		 <td><input type="text" name="L_NAME" value="<%= rs.getString("L_NAME")%>"/> </td></tr>
		 <tr><td>Address:</td>
		 <td><input type="text" name="ADDRESS" value="<%=rs.getString("ADDRESS" )%>"/></td></tr>
		 <tr><td>Mobile:</td>
		 <td><input type="text"name="MOB_NO" value="<%=rs.getString("MOB_NO") %>"/></td></tr>

		 

		 <tr><td>Gender</td>
		 <td><input type="text"name="GENDER" value="<%=rs.getString("GENDER")%>"/></td>


		 </tr>
		 <tr><td>Username</td>
		 <td><input type="text" name="USERNAME" style="background-color: white;color:grey;" value="<%= rs.getString("USERNAME")%>" readonly="readonly"/></td>
		 </tr>
		 <tr><td>Password</td>
		 <td><input type="text" name="USERPASS" value="<%= rs.getString("USERPASS")%>"/></td></tr>
		 <tr><td>Money Deposit</td>

		 <td><input type="text" name="MONEYDEPOSIT" style="background-color: white;color:grey;" name="MONEYDEPOSIT" value="<%= rs.getInt("MONEYDEPOSIT")%>" readonly="readonly"/></td>

		 </tr>


		 <tr><td>Email</td>

		 <td><input type="text"name="U_EMAIL" value="<%=rs.getString("U_EMAIL")%>"/></td>

		 </tr>
		 </table><br>
		
		<center> <input type="submit" value="Update"></center>
		</form>
		<%
 
	 }
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>




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