package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: CorporateDelete
 *
 */
 public class CorporateDelete extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection conn;
   PreparedStatement pst;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public CorporateDelete() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
	       
        int CO_ID = Integer.parseInt(request.getParameter("y"));
        
     
        
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			 conn = DriverManager.getConnection(URL, "Train5","chennai");
            pst = conn.prepareStatement("delete from Corporate_Reg1 where CO_ID=?");
            pst.setInt(1,CO_ID);
            
            int row = pst.executeUpdate();
            if (row > 0) {
            	 response.sendRedirect("CorporateList.jsp");
                

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