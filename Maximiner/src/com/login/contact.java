package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maximiner.OracalDatabaseConnect;
@WebServlet("/contact")
public class contact extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public contact() 
    {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		String subject=request.getParameter("subject");
		String message=request.getParameter("message");
		try
		{
			Connection con = new OracalDatabaseConnect().Connect();
    		PreparedStatement ps=con.prepareStatement("insert into contact_info values(?,?,?,?,?)");
    		ps.setString(1, name);
    		ps.setString(2, email);
    		ps.setString(3, phonenumber);
    		ps.setString(4, subject);
    		ps.setString(5, message);
    		int i=ps.executeUpdate();
    		if(i>0)
    		{
    				String Name= "Name :";
    				String Email="Email :";
    				String Contact= "Contact Number :";
    				String Message= " Message : ";
    				String message1 =  Name + "" + name + "\n\n" + Email + "" + email + "\n\n" + Contact + "" + phonenumber + "\n\n" + Message + "" + message;
    				SendMail.sendResetMail("prasadmayya8@gmail.com","Contact Information Here",message1,"no");
    				RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");
    				rd.include(request, response);
    		}	
		}
		catch(Exception e)
		{
				System.out.println("Exception Occurred Here");
		}		
	}
}