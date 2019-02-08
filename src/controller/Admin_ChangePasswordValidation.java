package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class for Servlet: Admin_ChangePasswordValidation
 *
 */
 public class Admin_ChangePasswordValidation extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection conn=null;
   PreparedStatement pst=null;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Admin_ChangePasswordValidation() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  PrintWriter out = response.getWriter();
	       
          String uname=request.getParameter("username1");
          String oldpass = request.getParameter("oldpassword");
          String newpass = request.getParameter("newpassword");
          try { 
        	  Class.forName("oracle.jdbc.driver.OracleDriver");
			  String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			  conn = DriverManager.getConnection(URL, "Train5","chennai");
                  pst = conn.prepareStatement("update USER_LOGIN set password=? where name=? and password =?");
                  pst.setString(1,newpass);
                  pst.setString(2,uname);
                  pst.setString(3,oldpass);
                  int a=pst.executeUpdate();
                  if(a>0)
                  {
                     
                  out.println("<center><h2>Your password Changed successfully</h2></center>");
                  RequestDispatcher rd = request.getRequestDispatcher("AdminChangePassword.jsp");
                  rd.include(request, response);
               } 
                  else
                  {
                      
                  out.println("<center><h2>Invalid Password or enter Required fields</h2></center>");
                  RequestDispatcher rd = request.getRequestDispatcher("AdminChangePassword.jsp");
                  rd.include(request, response);
                  }
              
          } catch (Exception ex) {
              ex.printStackTrace();
          }

         

  }

	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}