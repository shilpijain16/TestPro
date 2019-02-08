package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.AccountBeanNew;

/**
 * Servlet implementation class for Servlet: AccountServlet
 *
 */
 public class AccountServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public AccountServlet() {
		super();
	}   	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		ServletContext ctx=getServletContext();
		Integer CO_ID=(Integer)ctx.getAttribute("CO_ID");
		
		int B_ID=Integer.parseInt(request.getParameter("id"));
		//int CO_ID=Integer.parseInt(request.getParameter("CO_ID"));
		String Account_Name=request.getParameter("Account_Name");
		String Currency=request.getParameter("Currency");
		String Branch=request.getParameter("Branch");
		int Available_Balance=Integer.parseInt(request.getParameter("Available_Balance"));
		int Opening_Balance=Integer.parseInt(request.getParameter("Opening_Balance"));
		
	   AccountBeanNew b1=new AccountBeanNew();
		b1.setB_ID(B_ID);	
		b1.setCO_ID(CO_ID);
		b1.setAccount_Name(Account_Name);	
		b1.setCurrency(Currency);	
		b1.setBranch(Branch);	
		b1.setAvailable_Balance(Available_Balance);	
		b1.setOpening_Balance(Opening_Balance);	
	
		
		
		
		try
		{
			Connection conn=null;
			PreparedStatement pstmt=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
			 pstmt=conn.prepareStatement("Insert into Biller (B_ID,CO_ID,Account_Name,Currency,Branch,Available_Balance,Opening_Balance) values(?,?,?,?,?,?,?)");
			 pstmt.setInt(1,b1.getB_ID());
		pstmt.setInt(2,b1.getCO_ID());
			 pstmt.setString(3,b1.getAccount_Name());
			 pstmt.setString(4,b1.getCurrency());
			pstmt.setString(5,b1.getBranch());	
			pstmt.setInt(6,b1.getAvailable_Balance());
			pstmt.setInt(7,b1.getOpening_Balance());
			
			
			int x=pstmt.executeUpdate();
			
			if(x>0)
			{
				//out.println("<h1>BILLER HAS BEEN ADDED SUCCESSFULLY</h1>");
          RequestDispatcher rd=request.getRequestDispatcher("CorporateProfile.jsp");
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