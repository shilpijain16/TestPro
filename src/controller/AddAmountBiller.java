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
 * Servlet implementation class for Servlet: AddAmountBiller
 *
 */
 public class AddAmountBiller extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public AddAmountBiller() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int rsltbal=0;
		HttpSession session=request.getSession(true);
		Integer CO_ID=(Integer)session.getAttribute("CO_ID");
		Integer BID=(Integer)session.getAttribute("BID");
		Integer AMOUNT=(Integer)session.getAttribute("AMOUNT");
		System.out.println("in add amount biller"+BID+" "+AMOUNT);
		try
		{
			Connection conn;
			PreparedStatement pstmt,pstmt1;
			ResultSet rs;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			System.out.println("in add amount biller inside try"+BID+" "+AMOUNT);
			conn=DriverManager.getConnection(url,"Train5","chennai");
		     pstmt1=conn.prepareStatement("select AVAILABLE_BALANCE from biller where B_ID=?");
		     pstmt1.setInt(1,BID);
		     rs=pstmt1.executeQuery();
		   while(rs.next())
				{
		     rsltbal =rs.getInt("AVAILABLE_BALANCE");
		     System.out.println(rsltbal);
		     rsltbal=rsltbal+AMOUNT;
		     pstmt=conn.prepareStatement("update BILLER set AVAILABLE_BALANCE=? where B_ID=?");
		     pstmt.setInt(1,rsltbal);
             pstmt.setInt(2, BID);
		     int p=pstmt.executeUpdate();	
		     System.out.println("hello");
				
		     
		     //pstmt=conn.prepareStatement("update BILLER set AVAILABLE_BALANCE=? where B_ID=?");
              
		   System.out.println("in add amount biller aftre while"+BID+" "+AMOUNT);
		     RequestDispatcher rd=request.getRequestDispatcher("CorporateProfile.jsp");
		     rd.forward(request, response);
		     
		
	}  	
		}
		catch (Exception e) {
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