<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page isErrorPage="true" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/error.css" media="all"/>
        <title>Error Page</title>
    </head>
    <hr>
    <hr>
    <body> 
    <%
    final String EXC = "javax.servlet.error.exception";
    final String MSG = "javax.servlet.error.message";
    final String ST = "javax.servlet.error.status_code";

	 ServletContext sc = getServletContext();
        Exception exc = (Exception) request.getAttribute(EXC);
        Integer st_cd = (Integer) request.getAttribute(ST);
        String msg = (String) request.getAttribute(MSG);
    %>
        <div id="main">
            <div id="header">
                <h1><font style='font-family: Bookman Old Style;font-size: 70px'>No pages here as you see!</font><br><br><br> </h1>
                 <span><center><font style='font-family: Bookman Old Style;font-size: 200px'><%=st_cd%></font>- error found.</center></span><br><br><br><br><br><br>
                <center>
                    <FONT SIZE = 5>
                        <TABLE ALIGN = CENTER>

                            <TR BGCOLOR = LIGHTGREY>
                                <TD><B>  </B></TD><TD> </TD>
                            </TR>

                            <TR>
                                <TD><B> Type of Exception :</B></TD><TD><%= exception.getClass()%> </TD>
                            </TR>

                            <TR BGCOLOR = LIGHTGREY>
                                <TD><B> Message Description : </B></TD><TD><%= exception.getMessage()%></TD>
                            </TR>

                        </TABLE>
                    </FONT>
                    <hr>

                </center>

            </div>

            <div id="content">
                <ul class="nav">

                </ul>
                <p>Unless creepy emptiness was what you were looking for, this place has nothing that you want.<br />
                    So please either go to our <a href="FrontWelcome.jsp">Welcomepage</a>, or come back later.</p>
            </div>

            <div id="footer">
      	Designed by SmartBankTeam
            </div>
        </div>

    </body>
</html>
