package com.login;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class forgotpassword extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public forgotpassword() 
    {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd=null; 
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String message = "Dear Candidate," + "\n\n" + "Please visit this link to proceed http://localhost:8080/Maximiner_Project/PasswordReset.jsp." + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
		String usermail=request.getParameter("forgotemail");
		if(EmployeeValidate.CheckEmail(usermail))
		{	
			SendMail.sendResetMail(usermail,"Reset Password Link",message,"no");
			rd=request.getRequestDispatcher("jsp/Login.jsp");
			rd.forward(request, response);
		}
		else
		{	
		
			/*out.println("<html>");
			out.println("<head>");
			out.println("<style>");
			out.println("#tg1{");
			out.println("position:absolute;");
			out.println("top:700px;");
			out.println("right:50%;");
			out.println("color:red;");
			out.println("}");
			out.println("</style>");			
			out.println("<p id =\"tg1\">Invalid Email ID<p>");
			out.println("</head>");
			out.println("</html>");*/
			
			out.println("<html>");
	 		out.println("<head>");
	 	    out.println("<script>");
	 		out.println("alert('Invalid Email ID')");
	 		out.println("</script>");
	 		out.println("</head>");
	 		out.println("<html>");
	 		
	    	RequestDispatcher rs = request.getRequestDispatcher("jsp/ForgotPassword.jsp");
	    	rs.include(request, response);
			
			
			
		}
	}
}