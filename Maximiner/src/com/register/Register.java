package com.register;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.*;
public class Register extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public Register() 
    {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
	        String firstname=request.getParameter("first_name");
			String lastname=request.getParameter("last_name");
			String contact_no=request.getParameter("contact_no");
			String username=request.getParameter("username");
			String designation=request.getParameter("designation");
			String gender=request.getParameter("gender");
			String password=request.getParameter("user_password");
			String confirm=request.getParameter("confirm_password");
			String dob=request.getParameter("birth_date");
			String doj=request.getParameter("joining_date");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
	        try
	        { 	
	        	boolean result1=EmployeeValidate.Check(username);
	        	boolean result2=EmployeeValidate.CheckRegEmail(email);	
	        	if(!result1&&!result2)
	        	{
	        		
	        		Class.forName("oracle.jdbc.driver.OracleDriver");
	        		Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	        		PreparedStatement ps=con.prepareStatement("INSERT INTO MAXIMINER_EMP (FIRST_NAME, LAST_NAME, CONTACT_NO, USERNAME,DESIGNATION,GENDER,PASSWORD,CONFIRM_PASSWORD,BIRTH_DATE,JOINING_DATE,EMAIL,ADDRESS) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
	        		ps.setString(1, firstname);
	        		ps.setString(2, lastname);
	        		ps.setString(3, contact_no);
	        		ps.setString(4, username);
	        		ps.setString(5, designation);
	        		ps.setString(6, gender);
	        		ps.setString(7, password);
	        		ps.setString(8, confirm);
	        		ps.setString(9, dob);
	        		ps.setString(10, doj);
	        		ps.setString(11, email);
	        		ps.setString(12, address);
	        		int i=ps.executeUpdate();
	        		if(i>0)
	        		{
	        				HttpSession session=request.getSession(true);
	        				boolean newSession=session.isNew();
	        				System.out.println("In Staff Login session is new-->"+newSession);
	        				session.setAttribute("username",username);
	        				
	        			    String message = "Dear Candidate," + "\n\n" + "You have been Registered Successfully, you can login by Visit http://maximineranalytics.com." + "\n\n" + "Thank you," + "\n" + "Team Maximiner"; 
	        				SendMail.sendResetMail(email,"Registration Notification",message,"no");
	        				RequestDispatcher rd = request.getRequestDispatcher("jsp/careers.jsp");
	        				rd.include(request, response);
	        		}  
	        	}
	        	else
	        	{
	        				out.println("<html>");
	        				out.println("<head>");
	        				out.println("<script>");
	        				out.println("alert('Username or Email ID already Exist')");
	        				out.println("</script>");
	        				out.println("</head>");
	        				out.println("</html>");
	        				RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");
	        				rd.include(request, response);
	        	}
	        }
	        catch(Exception se)
	        {
	            se.printStackTrace();
	        }
	}

}