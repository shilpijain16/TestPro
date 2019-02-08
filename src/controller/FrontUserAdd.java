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
import javax.servlet.http.HttpSession;

import Bean.UserBean;
import java.sql.*;

/**
 * Servlet implementation class for Servlet: FrontUserAdd
 *
 */
 public class FrontUserAdd extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public FrontUserAdd() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		Connection conn;
		PreparedStatement pstmt;
		//HttpSession session=request.getSession(true);
		//int U_ID=(Integer)session.getAttribute("uid");
		
	
		int U_ID=Integer.parseInt(request.getParameter("id"));
		String F_NAME=request.getParameter("F_NAME");
		String L_NAME=request.getParameter("L_NAME");
		String ADDRESS=request.getParameter("ADDRESS");
		
		String MOB_NO=request.getParameter("MOB_NO");
		String CITY=request.getParameter("CITY");
		String STATE=request.getParameter("STATE");
		String DOB=request.getParameter("DOB");
		String GENDER=request.getParameter("GENDER");
		String USERNAME=request.getParameter("USERNAME");
		String USERPASS=request.getParameter("USERPASS");
		String U_EMAIL=request.getParameter("U_EMAIL");
		double MONEYDEPOSIT=Double.parseDouble(request.getParameter("MONEYDEPOSIT"));
		
		UserBean b=new UserBean();
		b.setU_ID(U_ID);	
		b.setF_NAME(F_NAME);
		b.setL_NAME(L_NAME);
		b.setADDRESS(ADDRESS);
		
		b.setMOB_NO(MOB_NO);
		b.setCITY(CITY);
		b.setSTATE(STATE);
		b.setDOB(DOB);
		b.setGENDER(GENDER);
		b.setUSERNAME(USERNAME);
		b.setUSERPASS(USERPASS);
		b.setU_EMAIL(U_EMAIL);
		b.setMONEYDEPOSIT(MONEYDEPOSIT);
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
			 pstmt=conn.prepareStatement("Insert into User_reg2 (U_ID,F_NAME,L_NAME,ADDRESS,MOB_NO,CITY,STATE,DOB,GENDER,USERNAME,USERPASS,U_EMAIL,MONEYDEPOSIT) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 pstmt.setInt(1,b.getU_ID());
			 pstmt.setString(2,b.getF_NAME());
			 pstmt.setString(3,b.getL_NAME());
			 pstmt.setString(4,b.getADDRESS());
			pstmt.setString(5,b.getMOB_NO());	
			pstmt.setString(6,b.getCITY());
			pstmt.setString(7,b.getSTATE());
			pstmt.setString(8,b.getDOB());
			pstmt.setString(9,b.getGENDER());
			pstmt.setString(10,b.getUSERNAME());
			pstmt.setString(11,b.getUSERPASS());
			pstmt.setString(12,b.getU_EMAIL());
			pstmt.setDouble(13,b.getMONEYDEPOSIT());
			int x=pstmt.executeUpdate();
			if(x>0)
			{
				
			RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			rd.forward(request, response);
			
			
			}
			pstmt.close();
			conn.close();
			
			
		}
		catch(Exception e)
		{
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