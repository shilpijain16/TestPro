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
	<li><a href="CorporateProfile.jsp">Home</a></li>

	<li><a href="#">Biller</a>
	<ul>
	  <li><a href="AddBiller.jsp" >Add Biller</a></li>
	  <li><a href="ShowBiller.jsp">Show Biller</a></li>
	  <li><a href="BilingTransaction.jsp">Biller Transaction</a></li>
	</ul>         
	</li>
	<li><a href="FrontWelcome.jsp">Logout</a>    
	</li>
	 </ul>
	</div>
	<div id="wrap2" height:2000px;>
<ul><li><h3><a href="About1.jsp">AboutUs</a></h3></li>
<li><h3><a href="Services.jsp">Services</a></h3></li>
<li><h3><a href="ContactUs.jsp">ContactUs</a></h3></li>
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

<div id="wrap2" height:2000px;>
<ul><li><h3><a href="About1.jsp">AboutUs</a></h3></li>
<li><h3><a href="Services.jsp">Services</a></h3></li>
<li><h3><a href="ContactUs.jsp">ContactUs</a></h3></li>
</div>

<% }

%>
</div>
<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>
<%

                    
 	
                    
                    
					Connection conn=null;
					PreparedStatement pst=null;
                    ResultSet rs = null;
                    try {

                    	Class.forName("oracle.jdbc.driver.OracleDriver");
            			String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
            			 conn = DriverManager.getConnection(URL, "Train5","chennai");
                    	 pst = conn.prepareStatement("select * from Corporate_Reg1 where CO_ID=?");
                    	 pst.setInt(1,CO_ID);
                    	 rs = pst.executeQuery();

                        while (rs.next()) {
                        	
        %>
         <form action="FrontCorporateUpdate" method="get" name="myform" onsubmit="return(validation3());">
		 <table border="1" cellspacing="2" cellpadding="2" height="300" width="450"align="center">
		 <tr><td>Corporate_ID:</td>
		 <td><input type="text" name="CO_ID" style="background-color: white;color:grey;" value="<%= rs.getInt("CO_ID")%>" readonly="readonly"/></td> 
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
		 <td><input type="text" name="CO_USERNAME" style="background-color: white;color:grey;" value="<%= rs.getString("CO_USERNAME")%>" readonly="readonly"/></td>
		 </tr>
		 <tr><td>Password</td>
		 <td><input type="text" name="CO_PASS" value="<%= rs.getString("CO_PASS")%>"/></td></tr>
		 <tr><td>Money Deposit</td>

		 <td><input type="text" name="MONEYDEPOSIT" style="background-color: white;color:grey;" name="MONEYDEPOSIT" value="<%= rs.getInt("MONEYDEPOSIT")%>" readonly="readonly"/></td>

		 </tr>


		 <tr><td>Email</td>

		 <td><input type="text"name="CO_EMAIL" value="<%=rs.getString("CO_EMAIL")%>"/></td>

		 </tr>
		 <tr><td>Department</td>

		 <td><input type="text"name="DEPT_NAME" value="<%=rs.getString("DEPT_NAME")%>"/></td>

		 </tr>
		 
		 </table><br>
		<center> <input type="submit" value="Update"></center>
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