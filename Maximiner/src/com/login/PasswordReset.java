package com.login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class PasswordReset extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	public PasswordReset() 
	{
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    RequestDispatcher rd=null;
	    String username=request.getParameter("username");
	    String newpass=request.getParameter("newpass");
	    String confirmpass=request.getParameter("confirmpass");
	    try
	    {	
        	boolean result=EmployeeValidate.CheckUsername(username);
        	if(result)
        	{
        			Class.forName("oracle.jdbc.driver.OracleDriver");
        			Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        		    PreparedStatement ps=con.prepareStatement("update maximiner_emp SET Password = ? , Confirm_password = ? where Username = ?");
        			ps.setString(1, newpass);
        			ps.setString(2, confirmpass);
        			ps.setString(3, username);
        			int i=ps.executeUpdate();
        			if(i>0)
        			{
        					
        					 rd=request.getRequestDispatcher("jsp/index.jsp");
        					 rd.forward(request, response);
        			}
        	}
        	else
        	{
        					/*out.println("<html>");
        					out.println("<head>");
        					out.println("<style>");
        					out.println("#tg2{");
        					out.println("position:absolute;");
        					out.println("top:520px;");
        					out.println("color:red;");
        					out.println("}");
        					out.println("</style>");
        					out.println("<center>");
        					out.println("<p id =\"tg2\">Invalid UserName<p>");
        					out.println("</center>");
        					out.println("</head>");
        					out.println("</html>");*/
        					
        					out.println("<html>");
        					out.println("<head>");
        					out.println("<script>");
        					out.println("alert('Invalid Username')");
        					out.println("</script>");
        					out.println("</head>");
        					out.println("<html>");
        					
        					RequestDispatcher rs = request.getRequestDispatcher("jsp/PasswordReset.jsp");
        					rs.include(request, response);
        	}
	    }
		catch(Exception e)
		{
							System.out.print("Exception is occurred");
		}
	}
}