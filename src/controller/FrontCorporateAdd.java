package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.CorporateBean;
 public class FrontCorporateAdd extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
	public FrontCorporateAdd() {
		super();
	}   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		Connection conn;
		PreparedStatement pstmt;
		int CO_ID=Integer.parseInt(request.getParameter("id"));		
		String F_NAME=request.getParameter("F_NAME");
		String L_NAME=request.getParameter("L_NAME");
		
		String ADDRESS=request.getParameter("ADDRESS");
		
		String CITY=request.getParameter("CITY");
		String STATE=request.getParameter("STATE");
		String DOB=request.getParameter("DOB");
		String GENDER=request.getParameter("GENDER");
		String CO_USERNAME=request.getParameter("CO_USERNAME");
		String CO_PASS=request.getParameter("CO_PASS");
		String CO_EMAIL=request.getParameter("CO_EMAIL");
		String MOB_NO=request.getParameter("MOB_NO");
		double MONEYDEPOSIT=Double.parseDouble(request.getParameter("MONEYDEPOSIT"));
		String DEPT_NAME=request.getParameter("DEPT_NAME");
		
		CorporateBean c= new CorporateBean();
		c.setCO_ID(CO_ID);	
		c.setF_NAME(F_NAME);
		c.setL_NAME(L_NAME);
		
		c.setADDRESS(ADDRESS);
		
		c.setCITY(CITY);
		c.setSTATE(STATE);
		c.setDOB(DOB);
		c.setGENDER(GENDER);
		c.setCO_USERNAME(CO_USERNAME);
		c.setCO_PASS(CO_PASS);
		c.setCO_EMAIL(CO_EMAIL);
		c.setMOB_NO(MOB_NO);
		c.setMONEYDEPOSIT(MONEYDEPOSIT);
		c.setDEPT_NAME(DEPT_NAME);
		
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
			 pstmt=conn.prepareStatement("Insert into Corporate_Reg1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 pstmt.setInt(1,c.getCO_ID());
			 pstmt.setString(2,c.getF_NAME());
			pstmt.setString(3,c.getL_NAME());
			
			pstmt.setString(4,c.getADDRESS());
			
			pstmt.setString(5,c.getCITY());
			pstmt.setString(6,c.getSTATE());
			pstmt.setString(7,c.getDOB());
			pstmt.setString(8,c.getGENDER());
			pstmt.setString(9,c.getCO_USERNAME());
			pstmt.setString(10,c.getCO_PASS());
			pstmt.setString(11,c.getCO_EMAIL());
			pstmt.setString(12,c.getMOB_NO());
			pstmt.setDouble(13,c.getMONEYDEPOSIT());
			pstmt.setString(14,c.getDEPT_NAME());
		
		
			int x=pstmt.executeUpdate();
			if(x>0)
			{
				
			RequestDispatcher rd=request.getRequestDispatcher("CorporateLogin.jsp");
			rd.forward(request, response);
			}
			pstmt.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			HttpSession session =request.getSession(true);
			request.setAttribute("ex","Id Already Exist");
		RequestDispatcher rd=request.getRequestDispatcher("CorporateRegristration.jsp");
		rd.forward(request, response);
		}
		

	
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}