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

/**
 * Servlet implementation class for Servlet: TransactionServlet
 *
 */
 public class TransactionServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public TransactionServlet() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int totbal=0,avlbal=0;
		ServletContext ctx=getServletContext();
		Connection conn;
		PreparedStatement pstmt,pstmt1;
		ResultSet rs,rs1;
		HttpSession session=request.getSession(true);
		
		Integer CO_ID=(Integer)ctx.getAttribute("CO_ID");
	    out.println(CO_ID);
		int BID=Integer.parseInt(request.getParameter("B_ID"));
		int AMOUNT=Integer.parseInt(request.getParameter("AMOUNT"));
		session.setAttribute("BID", BID);
		session.setAttribute("AMOUNT",AMOUNT);
		
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@//172.16.1.29:1521/nalanda";
		     conn=DriverManager.getConnection(url,"Train5","chennai");
		     
			 pstmt1=conn.prepareStatement("select moneydeposit from corporate_reg1 where CO_ID=?");
		     pstmt1.setInt(1,CO_ID);
			rs=pstmt1.executeQuery();
			while(rs.next())
			{
				totbal =rs.getInt("moneydeposit");
				avlbal=totbal-AMOUNT;
				pstmt=conn.prepareStatement("update corporate_reg1 set moneydeposit=? where co_id=?");
				pstmt.setInt(1, avlbal);
				pstmt.setInt(2, CO_ID);
				
				int x=pstmt.executeUpdate();
				System.out.println("in tran sevlet");
				//session.setAttribute("avlbal",avlbal);
				RequestDispatcher rd=request.getRequestDispatcher("AddAmountBiller");
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

	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}   	  	    
}