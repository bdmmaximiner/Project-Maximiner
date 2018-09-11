package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/careerapply")
public class careerapply extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public careerapply() 
    {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			HttpSession session=null;
			RequestDispatcher rd=null;
			 PrintWriter out = response.getWriter();
			String submit=request.getParameter("submit").trim();	
			if(submit.equals("Apply JAVA"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the java devevloper, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  { 
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
				  
			}
			
	    	if(submit.equals("Apply .Net"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the .Net devevloper, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	if(submit.equals("Apply Tester"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Testing Engineer, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply Network"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Network Engineer, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply Design"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Design Engineer, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply DBA"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the DBA role, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply SAP"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the SAP, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply Digital"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Digital Marketing, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply Production"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Production Engineer, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply Quality"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Quality Engineer, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply SQL"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the SQL Developer, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	
	    	if(submit.equals("Apply Technical"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Technical Support Enginner, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	if(submit.equals("Apply UI"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the UI devevloper, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	
	    	if(submit.equals("Apply Liferay"))
			{
				  session = request.getSession();
				  if(session != null)
				  {
				  	
					String username = session.getAttribute("username").toString();
				  	String message1 = "Dear Candidate," + "\n\n" + "You have successfully applied for the Liferay devevloper, We will review you application, and get back to you shortly" + "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(username,"Confirmation Mail",message1,"no"); //Data should be update automatically
					
					
					out.println("<html>");
					out.println("<head>");
					out.println("<script>");
					out.println("alert('You have successfully applied for job')");
					out.println("</script>s");
					out.println("</head>");
					out.println("<html>");
					
					rd=request.getRequestDispatcher("jsp/careers.jsp");
					rd.forward(request, response);
				  }
				  else
				  {
					    rd=request.getRequestDispatcher("jsp/Login.jsp");
						rd.forward(request, response);
				  }
			} 	
	    	
	    	
	    	
	    	
	    	
	}

}
