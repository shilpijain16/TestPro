package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: FrontUserUpdate
 *
 */

 public class FrontUserUpdate extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection conn;
   PreparedStatement pst;
   ResultSet rs ;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public FrontUserUpdate() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        int uid = (Integer) session.getAttribute("uid");
        @SuppressWarnings("unused")
		
        String F_NAME = request.getParameter("F_NAME").trim();
        System.out.println(F_NAME);

        String L_NAME = request.getParameter("L_NAME").trim();
        System.out.println(L_NAME);

        String ADDRESS = request.getParameter("ADDRESS").trim();
        System.out.println(ADDRESS);

        String MOB_NO = request.getParameter("MOB_NO").trim();
        
        
       
       
        String GENDER= request.getParameter("GENDER").trim();
        System.out.println(GENDER);
        String USERNAME= request.getParameter("USERNAME").trim();
        String USERPASS= request.getParameter("USERPASS").trim();
        String MONEYDEPOSIT= request.getParameter("MONEYDEPOSIT").trim();
        String U_EMAIL= request.getParameter("U_EMAIL").trim();
        
        
       

        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			 conn = DriverManager.getConnection(URL, "Train5","chennai");
            pst = conn.prepareStatement("update USER_REG2 set F_NAME=?,L_NAME=?,ADDRESS=?,MOB_NO=?,GENDER=?,USERNAME=?,USERPASS=?,MONEYDEPOSIT=?,U_EMAIL=? where U_ID=?");
            pst.setString(1,F_NAME);
            pst.setString(2, L_NAME);
            pst.setString(3, ADDRESS);
            pst.setString(4, MOB_NO);
            pst.setString(5, GENDER);
            pst.setString(6, USERNAME);
            pst.setString(7, USERPASS);
            pst.setString(8, MONEYDEPOSIT);
            pst.setString(9, U_EMAIL);
            pst.setInt(10,uid);
            int a = pst.executeUpdate();
            if (a > 0) {
               
                response.sendRedirect("UserProfile.jsp");

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