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


 public class UserAmountServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    
	public UserAmountServlet() {
		super();
	}   	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int totbal=0,avlbal=0;
		//ServletContext ctx=getServletContext();
		Connection conn;
		PreparedStatement pstmt,pstmt1;
		ResultSet rs,rs1;
		HttpSession session=request.getSession(true);
		int U_ID=(Integer)session.getAttribute("uid");
//System.out.println("hello");
	//	int U_ID=Integer.parseInt(request.getParameter("U_ID"));
		int MONEYDEPOSIT=Integer.parseInt(request.getParameter("MONEYDEPOSIT"));
		//session.setAttribute("U_ID", U_ID);
		//session.setAttribute("MONEYDEPOSIT",MONEYDEPOSIT);
		
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
		     
			 pstmt1=conn.prepareStatement("select MONEYDEPOSIT from user_reg2 where U_ID=?");
		     pstmt1.setInt(1,U_ID);
		     
			rs=pstmt1.executeQuery();
			while(rs.next())
			{
				int md =Integer.parseInt(rs.getString("MONEYDEPOSIT"));
				System.out.println(md);
		
				avlbal=MONEYDEPOSIT+md;
				System.out.println(avlbal);
				String s = String.valueOf(avlbal);  

				
				pstmt=conn.prepareStatement("update user_reg2 set MONEYDEPOSIT=? where U_ID=?");
				pstmt.setInt(1, avlbal);
				pstmt.setInt(2, U_ID);
				
				int x=pstmt.executeUpdate();
				System.out.println("in tran sevlet");
				RequestDispatcher rd=request.getRequestDispatcher("UserProfile.jsp");
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
		doGet(request, response);
	}   	  	    
}