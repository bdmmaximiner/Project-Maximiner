package com.hr;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("emp_id");
		String password = request.getParameter("password");
		String dept = request.getParameter("department");
		int var=Integer.parseInt(request.getParameter("index"));
		if (EmployeeValidate.checkUserInformation(username, password, dept)) {

			HttpSession session = request.getSession(true);
			boolean newSession = session.isNew();
			
			System.out.println("In User Login session is new-->" + newSession);
			session.setAttribute("username", username);
			
			session.setAttribute("index", request.getParameter("index"));
			RequestDispatcher rs = request.getRequestDispatcher("jsp/Dashboard.jsp");
			
			System.out.println("HERE-->"+var);
			
			
			rs.include(request, response);

		} else {

			/*
			 * out.println("<html>"); out.println("<head>"); out.println("<style>");
			 * out.println("#tg{"); out.println("position:absolute;");
			 * out.println("top:520px;"); out.println("right:50%;");
			 * out.println("color:red;"); out.println("}"); out.println("</style>");
			 * out.println("<center>");
			 * out.println("<p id =\"tg\">Invalid Username or Password<p>");
			 * out.println("</center>"); out.println("</head>"); out.println("</html>");
			 */

			out.println("<html>");
			out.println("<head>");
			out.println("<script>");
			out.println("alert('Invalid Employee ID or Password or Department')");

			out.println("</script>");
			out.println("</head>");
			out.println("<html>");

			RequestDispatcher rs = request.getRequestDispatcher("jsp/login.jsp");
			rs.include(request, response);
		}
	}

}
