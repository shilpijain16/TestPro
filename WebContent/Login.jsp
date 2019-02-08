<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/design.css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/admin.js">
</script>
</head>
<body>
<div id="wrap1">
<h1><img src="images/logo1.jpg" height="40" width="60">Smart Bank(Back Office)</h1>
<div id="wrap">
 <ul class="navbar">
<li><a href="FrontWelcome.jsp">Home</a></li>
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

</div>


<div id="wrap3" style="background-color":#EEEEEE;height:1000px;width:400px>
<h1><center>Welcome to Login Page</center></h1>
 <form method="get" action="LoginValidation" name="myform" onsubmit="return(validation1());"> 
            <center> 
            
            <table border="10px" border-botton="thick"  border-style="ridge" width="50%" cellpadding="8"> 
              
              
                  <tr>
                        <td>Username</td> 
                        <td><input type="text" name="uname" value="" /></td> 
                    </tr> 
                    <tr> 
                        <td>Password</td> 
                        <td><input type="password" name="pass" value="" /></td> 
                    </tr> 
                    <tr> 
                        <td><input type="Submit" value="Login" /></td> 
                        
                        <td colspan="2"> <a href="AdminForgotPassword.jsp">Forgot Password?</a></td> 
                    </tr> 
                       </table> 
                    
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