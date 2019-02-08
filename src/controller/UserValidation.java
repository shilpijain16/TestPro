package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: UserValidation
 *
 */
 public class UserValidation extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
  // PreparedStatement pst=null;
  // Connection conn=null;
  // ResultSet rs=null;
   
   
	public UserValidation() {
		super();
		
	}   	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();
	       String username=request.getParameter("USERNAME");
	       String pass=request.getParameter("USERPASS");
	      // System.out.println(username+pass);
	        try {
	        	Class.forName("oracle.jdbc.driver.OracleDriver");
				String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			Connection	 conn = DriverManager.getConnection(URL, "Train5","chennai");

	  PreparedStatement      pst = conn.prepareStatement("select * from USER_REG2 where USERNAME=? and USERPASS=?");
	        pst.setString(1,username);
	        pst.setString(2,pass);
	     ResultSet   rs = pst.executeQuery();
	                if(rs.next())
	                {
	                   int uid = rs.getInt("U_ID");
	                  HttpSession session=request.getSession(true);
	                   session.setAttribute("uid", uid);
	                  session.setAttribute("username",username);
	               
	                     
	               RequestDispatcher rd=request.getRequestDispatcher("UserProfile.jsp");
	                rd.forward(request, response);
	                }else{
	                	
	                 RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			              rd.forward(request, response);
	                	
	                	
	                }
	                conn.close();
	                pst.close();
	               
	                   } catch (Exception ex) {
	                 ex.printStackTrace();
	            }
	                 
	    } 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}   	  	    
}