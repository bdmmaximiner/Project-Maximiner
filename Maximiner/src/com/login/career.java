package com.login;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/career")
@MultipartConfig(maxFileSize = 16177215)	
public class career extends HttpServlet 
{	
	// database connection settings
	private String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private String dbUser = "system";
	private String dbPass = "system";	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd=null; 
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String contactno = request.getParameter("contact_no");
		String education = request.getParameter("education");
		String email = request.getParameter("email");
		String designation = request.getParameter("designation");
		InputStream inputStream = null;	
		InputStream inputstream2 = null;
		Part filePart = request.getPart("photo");
		if (filePart != null) 
		{
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			inputStream = filePart.getInputStream();
		}		
		Part filePart1 = request.getPart("resume");
		if (filePart1 != null)
		{
			System.out.println(filePart1.getName());
			System.out.println(filePart1.getSize());
			System.out.println(filePart1.getContentType());
			inputstream2 = filePart1.getInputStream();
		}
		Connection conn = null;	
		String message = null;
		try 
		{	
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			String sql = "INSERT INTO careers(first_name, last_name, contact_no,education,email,designation,photo,resume) values (?, ?, ?,?,?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, firstName);
			statement.setString(2, lastName);	
			statement.setString(3, contactno);	
			statement.setString(4, education);	
			statement.setString(5, email);	
			statement.setString(6, designation);	
			if (inputStream != null) 
			{
				statement.setBlob(7, inputStream);  //Adding the photo object to prepared statement.
			}
			
			if (inputstream2 != null) 
			{
				statement.setBlob(8, inputstream2);  //It will take any file .pdf, .doc, .txts
			}
			
			
			int row = statement.executeUpdate();
			if (row > 0) 
			{
					String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the job, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(email,"Confirmation Mail",message1,"no"); //Data should be update automatically
					rd=request.getRequestDispatcher("jsp/careers.html");
					rd.forward(request, response);
			}
		}
		catch (SQLException ex) 
		{
			message = "ERROR: " + ex.getMessage(); //set to information 
			ex.printStackTrace();
		}
		finally
		{
			if (conn != null)
			{
				try 
				{
					conn.close();
				} 
				catch (SQLException ex) 
				{
					ex.printStackTrace();
				}
			}
		}
	}
}