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
<% 
String uname=(String)session.getAttribute("uname");
if((uname==null))
{
response.sendRedirect("Login.jsp");	
}
%>
<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart BankBack Office)</h1>
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

<h2>Biller List</h2>
<sql:setDataSource var="snapshot"
driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda"
user="Train5" password="chennai"/>     
<sql:query dataSource="${snapshot}" var="result">
select * from BILLER
</sql:query>     <!-- connectivity with oracle -->


<table border="1" width="100%">
<tr>
<th>ID</th>
<th> Name</th>
<th>Currency</th>
<th>Branch</th>
<th>Available Balance</th>
<th>Openeing Balance</th>
<th>Delete</th>

</tr>

<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.B_ID}"/></td> 
<td><c:out value="${row.ACCOUNT_NAME}"/></td>
<td><c:out value="${row.CURRENCY}"/></td>
<td><c:out value="${row.BRANCH}"/></td>
<td><c:out value="${row.AVAILABLE_BALANCE}"/></td>
<td><c:out value="${row.OPENING_BALANCE}"/></td> 
<td><a href="BillerDelete?y=${row.BID}" name="delete">Delete</a></td>

</tr>
</c:forEach>
</table>





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