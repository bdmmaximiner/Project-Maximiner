package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Login extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	public Login() 
	{
		super();
	}
	        protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException 
			{
	        	response.setContentType("text/html;charset=UTF-8");
	        	PrintWriter out = response.getWriter();
	        	String username = request.getParameter("username");
	        	String password = request.getParameter("password");
	        	if (EmployeeValidate.checkUserInformation(username, password)) 
	        	{
	        		
	        		HttpSession session=request.getSession(true);
    				boolean newSession=session.isNew();
    				System.out.println("In User Login session is new-->"+newSession);
    				session.setAttribute("username",username);
    				
	        		RequestDispatcher rs = request.getRequestDispatcher("jsp/careers.jsp");
	        		rs.include(request, response);
	        		
	        		
	        	}
	    	else 
		    {
	    		/*out.println("<html>");
	    		out.println("<head>");
	    		out.println("<style>");
	    		out.println("#tg{");
	    		out.println("position:absolute;");
	    		out.println("top:520px;");
	    		out.println("right:50%;");
	    		out.println("color:red;");	
	    		out.println("}");
	    		out.println("</style>");
	    		out.println("<center>");
	    		out.println("<p id =\"tg\">Invalid Username or Password<p>");
	    		out.println("</center>");
	    		out.println("</head>");
	    		out.println("</html>");*/
	    		
	    
	    	    out.println("<html>");
	 			out.println("<head>");
	 			out.println("<script>");
	 			out.println("alert('Invalid Username or Password')");
	 			out.println("</script>");
	 			out.println("</head>");
	 			out.println("<html>");
	    		
	    		
	    		RequestDispatcher rs = request.getRequestDispatcher("jsp/Login.jsp");
	    		rs.include(request, response);
	    	}
	}
}