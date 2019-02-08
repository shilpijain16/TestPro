package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


 public class UserAmountServlet1 extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    
	public UserAmountServlet1() {
		super();
	}   	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int totbal=0,avlbal=0;
		ServletContext ctx=getServletContext();
		int CO_ID=(Integer)ctx.getAttribute("CO_ID");
		Connection conn;
		PreparedStatement pstmt,pstmt1;
		ResultSet rs,rs1;
		int MONEYDEPOSIT=Integer.parseInt(request.getParameter("MONEYDEPOSIT"));
		
		
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
		     
			 pstmt1=conn.prepareStatement("select MONEYDEPOSIT from CORPORATE_REG1 where CO_ID=?");
		     pstmt1.setInt(1,CO_ID);
		     
			rs=pstmt1.executeQuery();
			while(rs.next())
			{
				int md =Integer.parseInt(rs.getString("MONEYDEPOSIT"));
				System.out.println(md);
		
				avlbal=MONEYDEPOSIT+md;
				System.out.println(avlbal);
				String s = String.valueOf(avlbal);  

				
				pstmt=conn.prepareStatement("update CORPORATE_REG1 set MONEYDEPOSIT=? where CO_ID=?");
				pstmt.setInt(1, avlbal);
				pstmt.setInt(2, CO_ID);
				
				int x=pstmt.executeUpdate();
				System.out.println("in tran sevlet");
				RequestDispatcher rd=request.getRequestDispatcher("CorporateProfile.jsp");
				rd.forward(request, response);
				
				
			}	
			
			pstmt1.close();
			conn.close();
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}  	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}   	  	    
}