package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: BackUserCheck
 *
 */
 public class BackUserCheck extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public BackUserCheck() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		int U_ID=Integer.parseInt(request.getParameter("U_ID"));		
		 HttpSession session =request.getSession(true);
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
			 pstmt=conn.prepareStatement("select U_ID from USER_REG2 ");
			 
		  rs = pstmt.executeQuery();
             while(rs.next())
             {
            	
    		 
            	 if(U_ID==rs.getInt("U_ID"))
            	 {
            		
         			request.setAttribute("ex","Id Already Exist");
         		RequestDispatcher rd=request.getRequestDispatcher("UserReg.jsp");
         		rd.forward(request, response);
            	 }
            	 else
            	 {
            		 String str=String.valueOf(U_ID);
            		 session.setAttribute("uid",str);
            		 RequestDispatcher rd=request.getRequestDispatcher("UserReg.jsp");
              		rd.forward(request, response);
            		 
            	 }
            	 
             }
             }  	
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}