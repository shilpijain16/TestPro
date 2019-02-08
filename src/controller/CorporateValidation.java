package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class for Servlet: CorporateValidation
 *
 */
 public class CorporateValidation extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
	public CorporateValidation() {
		super();
	}   	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	ServletContext ctx=getServletContext();
		PrintWriter out = response.getWriter();
	       String CO_USERNAME=request.getParameter("username");
	       String CO_PASS=request.getParameter("password");
	  //System.out.println(CO_USERNAME+CO_PASS);
	        try {
	        	Class.forName("oracle.jdbc.driver.OracleDriver");
				String URL = "jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
			Connection	 conn = DriverManager.getConnection(URL, "Train5","chennai");

	  PreparedStatement  pst = conn.prepareStatement("select * from CORPORATE_REG1 where CO_USERNAME=? and CO_PASS=?");
	        pst.setString(1,CO_USERNAME);
	        pst.setString(2,CO_PASS);
	        
	        		ResultSet   rs = pst.executeQuery();
	                if(rs.next())
	                {
	                	//System.out.println(CO_USERNAME+CO_PASS);
	                	HttpSession session=request.getSession(true);
	                  // int CO_ID1 = rs.getInt("CO_ID");
	                	int CO_ID = rs.getInt("CO_ID");
	                   String CO_USERNAME1=rs.getString("CO_USERNAME");
	                   String DEPT_NAME=rs.getString("DEPT_NAME");
	                  //Integer CO_ID=new Integer(CO_ID1);
	                  ctx.setAttribute("CO_ID", CO_ID);
	                  session.setAttribute("CO_USERNAME",CO_USERNAME1);
	                  session.setAttribute("DEPT_NAME",DEPT_NAME);
	               RequestDispatcher rd=request.getRequestDispatcher("CorporateProfile.jsp");
	                rd.forward(request, response);
	                }else{
	                	
		                 RequestDispatcher rd=request.getRequestDispatcher("CorporateLogin.jsp");
				              rd.forward(request, response);
		                	
		                	
		                }
	                conn.close();
	                pst.close();
	               
	                   } catch (Exception ex) {
	                 ex.printStackTrace();
	            }
	                 
	    } 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}   	  	    
}