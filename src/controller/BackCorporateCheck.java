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
 * Servlet implementation class for Servlet: BackCorporateCheck
 *
 */
 public class BackCorporateCheck extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public BackCorporateCheck() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		int CO_ID=Integer.parseInt(request.getParameter("CO_ID"));		
		HttpSession session =request.getSession(true);
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
			 pstmt=conn.prepareStatement("select CO_ID from Corporate_Reg1 ");
			 
		  rs = pstmt.executeQuery();
             while(rs.next())
             {
            	 if(CO_ID==rs.getInt("CO_ID"))
            	 {
            		
            		 request.setAttribute("coid",CO_ID);
         			request.setAttribute("ex","Id Already Exist");
         		RequestDispatcher rd=request.getRequestDispatcher("CorporateReg.jsp");
         		rd.forward(request, response);
            	 }
            	 else
            	 {
            		 String str=String.valueOf(CO_ID);
            		 session.setAttribute("coid",str);
            		 RequestDispatcher rd=request.getRequestDispatcher("CorporateReg.jsp");
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