package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class for Servlet: LoginValidation
 *
 */
 public class LoginValidation extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   PreparedStatement pst;
   Connection conn;
   ResultSet rs;
   
	public LoginValidation() {
		super();
	}   	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter out = response.getWriter();
         String uname=request.getParameter("uname").trim();
        
         String pass=request.getParameter("pass");
       //  String email=request.getParameter("email").trim();
          HttpSession session = request.getSession(true);
          session.setAttribute("uname", uname);

        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			 conn = DriverManager.getConnection(URL, "Train5","chennai");
        
     pst = conn.prepareStatement("select * from USER_LOGIN where name=? and password=? ");
     pst.setString(1,uname);
     pst.setString(2,pass);
 
     rs = pst.executeQuery();
     
     if(rs.next())
     {
         
     RequestDispatcher rd=request.getRequestDispatcher("WelcomeForm.jsp");
     rd.forward(request, response); 
     }
     else
     {
    	 out.println("<marquee behavior='alternate' scrolldelay='50'  ><center><h2><font color='red'  >Invalid Username or Password</font></h2></center></marquee>");
    	 RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
    	 rd.include(request, response);
     }
     } catch (Exception ex) {
      out.println(ex);
 }
		
		try {
			pst.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}  	
	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}