<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
<li><a href="PayBills.jsp">Pay Bills</a>
 </ul>
</div>
</div>





<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>

 <%

                    int uid = (Integer) session.getAttribute("uid");
 	
                    String username = (String) session.getAttribute("username");
                    out.println("Welcome"+" "+username);
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
         <form action="FrontUserUpdate.jsp" method="get" name="myform" onsubmit="return(validation3());">
		 <table border="1" cellspacing="2" cellpadding="2" height="300" width="450"align="center">
		 <tr><td>User_ID:</td>
		 <td><%= rs.getInt("U_ID")%></td> 
		 </tr>
		 <tr><td>First Name:</td>
		 <td><%= rs.getString("F_NAME")%></td></tr>
		 <tr><td>Last Name:</td>
		 <td><%= rs.getString("L_NAME")%> </td></tr>
		 <tr><td>Address:</td>
		 <td><%=rs.getString("ADDRESS" )%></td></tr>
		 <tr><td>Mobile:</td>
		 <td><%=rs.getString("MOB_NO") %></td></tr>

		 <tr><td>BirthDate</td>
		 <td><%= rs.getString("DOB")%></td>
		 </tr>

		 <tr><td>Gender</td>
		 <td><%=rs.getString("GENDER")%></td>


		 </tr>
		 <tr><td>Username</td>
		 <td><%= rs.getString("USERNAME")%></td>
		 </tr>
		 <tr><td>Password</td>
		 <td><%= rs.getString("USERPASS")%></td></tr>
		 <tr><td>Money Deposit</td>

		 <td><%= rs.getInt("MONEYDEPOSIT")%></td>

		 </tr>


		 <tr><td>Email</td>

		 <td><%=rs.getString("U_EMAIL")%></td>

		 </tr>
		 </table><br>
		 <center><input type="submit" value="Update"></center>
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