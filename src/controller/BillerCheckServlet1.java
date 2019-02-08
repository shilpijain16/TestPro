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
 * Servlet implementation class for Servlet: BillerCheckServlet1
 *
 */
 public class BillerCheckServlet1 extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public BillerCheckServlet1() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		int B_ID=Integer.parseInt(request.getParameter("B_ID"));
		System.out.println(B_ID);
		 HttpSession session =request.getSession(true);
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
			 pstmt=conn.prepareStatement("select B_ID from Biller ");
			 boolean flag=true;
		  rs = pstmt.executeQuery();
		  if(flag==true)
		  {
             while(rs.next())
             {
            	 if(B_ID==rs.getInt("B_ID"))
            	 {
            		
         			request.setAttribute("ex","Id Already Exist");
         		System.out.println(request.getAttribute("ex"));
         		flag=false;
         			RequestDispatcher rd=request.getRequestDispatcher("AddBiller.jsp");
         		rd.forward(request, response);
            	 }
            	 else{
            		 continue;
            	 }
             }
		  }
     		 String str=String.valueOf(B_ID);
     		 session.setAttribute("bid",str);
     		RequestDispatcher rd=request.getRequestDispatcher("AddBiller.jsp");
     		rd.forward(request, response);
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