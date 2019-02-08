package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
/**
 * Servlet implementation class for Servlet: UserUpdate
 *
 */
 public class UserUpdate extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection conn;
   PreparedStatement pst;
   ResultSet rs ;

   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public UserUpdate() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        	
		
		 @SuppressWarnings("unused")
		PrintWriter out = response.getWriter();
	        HttpSession session = request.getSession(true);
	        String x =(String) session.getAttribute("x");
	        @SuppressWarnings("unused")
			int U_ID=Integer.parseInt(x);
	        System.out.println(x);
	        
	        String F_NAME = request.getParameter("F_NAME").trim();
	        System.out.println(F_NAME);

	        String L_NAME = request.getParameter("L_NAME").trim();
	        System.out.println(L_NAME);

	        String ADDRESS = request.getParameter("ADDRESS").trim();
	        System.out.println(ADDRESS);

	        String MOB_NO = request.getParameter("MOB_NO").trim();
	        System.out.println(ADDRESS);
	        
	       
	        String CITY=request.getParameter("CITY");
	        System.out.println(CITY);
	        String STATE=request.getParameter("STATE");
	        System.out.println(STATE);
	        String GENDER= request.getParameter("GENDER").trim();
	        System.out.println(GENDER);
	        String U_EMAIL= request.getParameter("U_EMAIL").trim();
	        System.out.println(U_EMAIL);
	        
	       

	        try {
	        	Class.forName("oracle.jdbc.driver.OracleDriver");
				String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
				 conn = DriverManager.getConnection(URL, "Train5","chennai");
	            pst = conn.prepareStatement("update USER_REG2 set F_NAME=?,L_NAME=?,ADDRESS=?,MOB_NO=?,CITY=?,STATE=?,GENDER=?,U_EMAIL=? where U_ID=?");
	            pst.setString(1,F_NAME);
	            pst.setString(2, L_NAME);
	            pst.setString(3, ADDRESS);
	            pst.setString(4, MOB_NO);
	            
	            pst.setString(5, CITY);
	            pst.setString(6, STATE);
	            pst.setString(7, GENDER);
	            pst.setString(8, U_EMAIL);
	            pst.setInt(9,U_ID);
	            int a = pst.executeUpdate();
	            if (a > 0) {
	               
	                response.sendRedirect("UserList.jsp");

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
		doGet(request, response);
	}   	  	    
}