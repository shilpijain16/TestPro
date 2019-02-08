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
 * Servlet implementation class for Servlet: FrontCorporateUpdate
 *
 */
 public class FrontCorporateUpdate extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection conn;
   PreparedStatement pst;
   ResultSet rs ;
    
	public FrontCorporateUpdate() {
		super();
	}   	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		int CO_ID=Integer.parseInt(request.getParameter("CO_ID"));
       
        System.out.println(CO_ID);
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
        String CO_USERNAME= request.getParameter("CO_USERNAME").trim();
        System.out.println(CO_USERNAME);
        String CO_PASS= request.getParameter("CO_PASS").trim();
        System.out.println(CO_PASS);
        String MONEYDEPOSIT= request.getParameter("MONEYDEPOSIT").trim();
        System.out.println(MONEYDEPOSIT);
        String CO_EMAIL= request.getParameter("CO_EMAIL").trim();
        System.out.println(CO_EMAIL);
        String DEPT_NAME= request.getParameter("DEPT_NAME").trim();
        System.out.println(DEPT_NAME);
       

        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			 conn = DriverManager.getConnection(URL, "Train5","chennai");
            pst = conn.prepareStatement("update CORPORATE_REG1 set F_NAME=?,L_NAME=?,ADDRESS=?,MOB_NO=?,GENDER=?,CO_USERNAME=?,CO_PASS=?,MONEYDEPOSIT=?,CO_EMAIL=?,DEPT_NAME=? where CO_ID=?");
            pst.setString(1,F_NAME);
            pst.setString(2, L_NAME);
            pst.setString(3, ADDRESS);
            pst.setString(4, MOB_NO);
            pst.setString(5, GENDER);
            pst.setString(6, CO_USERNAME);
            pst.setString(7, CO_PASS);
            pst.setString(8, MONEYDEPOSIT);
            pst.setString(9, CO_EMAIL);
            pst.setString(10, DEPT_NAME);
            pst.setInt(11,CO_ID);
            int a = pst.executeUpdate();
            if (a > 0) {
               
                response.sendRedirect("CorporateProfile.jsp");

            }


        } catch (Exception ex) {
            ex.printStackTrace();
        }
         
    }
		
		
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}   	  	    
}