package com.register;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.login.*;
@MultipartConfig(maxFileSize = 16177215)	
public class Register extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public Register() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Statement stmt = null;
		InputStream inputstream2 = null;
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String firstname = request.getParameter("first_name");
		String lastname = request.getParameter("last_name");
		String contact_no = request.getParameter("contact_no");
		String username = request.getParameter("username");
		String designation = request.getParameter("designation");
		String gender = request.getParameter("gender");
		String password = request.getParameter("user_password");
		String confirm = request.getParameter("confirm_password");
		String dob = request.getParameter("birth_date");
		String doj = request.getParameter("joining_date");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		try 
		{
			boolean result1 = EmployeeValidate.Check(username);
			boolean result2 = EmployeeValidate.CheckRegEmail(email);
			if (!result1 && !result2) 
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
				stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				stmt.executeQuery("DECLARE \r\n" + "    NCOUNT NUMBER; \r\n" + "    V_SQL  LONG; \r\n" + "   \r\n"
						+ "     \r\n" + "BEGIN \r\n" + "    SELECT COUNT(*) \r\n" + "    INTO   NCOUNT \r\n"
						+ "    FROM   DBA_TABLES \r\n" + "    WHERE  TABLE_NAME = 'MAXIMINER_EMP'; \r\n" + "\r\n"
						+ "    IF ( NCOUNT <= 0 ) THEN \r\n" + "      V_SQL := 'CREATE TABLE MAXIMINER_EMP \r\n"
						+ "(\r\n" + "  FIRST_NAME VARCHAR2(100 BYTE) \r\n" + ", LAST_NAME VARCHAR2(100 BYTE) \r\n"
						+ ", CONTACT_NO VARCHAR2(100 BYTE) \r\n" + ", USERNAME VARCHAR2(100 BYTE) \r\n"
						+ ", DESIGNATION VARCHAR2(100 BYTE) \r\n" + ", GENDER VARCHAR2(100 BYTE) \r\n"
						+ ", PASSWORD VARCHAR2(100 BYTE) \r\n" + ", CONFIRM_PASSWORD VARCHAR2(100 BYTE) \r\n"
						+ ", BIRTH_DATE VARCHAR2(100 BYTE) \r\n" + ", JOINING_DATE VARCHAR2(100 BYTE) \r\n"
						+ ", EMAIL VARCHAR2(100 BYTE) \r\n" + ", ADDRESS VARCHAR2(100 BYTE) \r\n"
						+ ", STATE VARCHAR2(50) \r\n" + ", CONTRY VARCHAR2(50) \r\n" + ", SSLC VARCHAR2(50) \r\n"
						+ ", SSLC_PERCENTAGE VARCHAR2(20) \r\n" + ", COLLEGE VARCHAR2(50) \r\n"
						+ ", COLLEGE_PERCENTAGE VARCHAR2(20) \r\n" + ", DEGREE VARCHAR2(50) \r\n"
						+ ", DEGREE_PERCENTAGE VARCHAR2(20) \r\n" + ", PG VARCHAR2(50) \r\n"
						+ ", PG_PERCENTAGE VARCHAR2(20),RESUME BLOB)'; \r\n" + "\r\n" + "      EXECUTE IMMEDIATE V_SQL; \r\n"
						+ "\r\n" + "     \r\n" + "\r\n" + "   \r\n" + "    END IF; \r\n" + "END; ");

				PreparedStatement ps = con.prepareStatement(
						"INSERT INTO MAXIMINER_EMP (FIRST_NAME, LAST_NAME, CONTACT_NO, USERNAME,DESIGNATION,GENDER,PASSWORD,CONFIRM_PASSWORD,BIRTH_DATE,JOINING_DATE,EMAIL,ADDRESS,STATE, CONTRY, SSLC, SSLC_PERCENTAGE, COLLEGE, COLLEGE_PERCENTAGE, DEGREE, DEGREE_PERCENTAGE, PG, PG_PERCENTAGE,RESUME) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
				ps.setString(13, request.getParameter("state"));
				ps.setString(14, request.getParameter("contry"));
				ps.setString(15, request.getParameter("sslc"));
				ps.setString(16, request.getParameter("sslc_score"));
				ps.setString(17, request.getParameter("college"));
				ps.setString(18, request.getParameter("college_score"));
				ps.setString(19, request.getParameter("degree"));
				ps.setString(20, request.getParameter("degree_score"));
				ps.setString(21, request.getParameter("pg"));
				ps.setString(22, request.getParameter("pg_score"));
				Part filePart1 = request.getPart("resume");
				if (filePart1 != null)
				{
					System.out.println(filePart1.getName());
					System.out.println(filePart1.getSize());
					System.out.println(filePart1.getContentType());
					inputstream2 = filePart1.getInputStream();
				}
				if (inputstream2 != null) 
				{
					ps.setBlob(23, inputstream2);  //It will take any file .pdf, .doc, .txts
				}
				
				int i = ps.executeUpdate();
				con.commit();
				
				if (i > 0) {
					HttpSession session = request.getSession(true);
					boolean newSession = session.isNew();
					System.out.println("In Staff Login session is new-->" + newSession);
					session.setAttribute("username", email);

					String message = "Dear Candidate," + "\n\n"
							+ "You have been Registered Successfully, you can login by Visit http://maximineranalytics.com."
							+ "\n\n" + "Thank you," + "\n" + "Team Maximiner";
					SendMail.sendResetMail(email, "Registration Notification", message, "no");
					RequestDispatcher rd = request.getRequestDispatcher("jsp/careers.jsp");
					rd.include(request, response);
				}
			} else {
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
		} catch (Exception se) {
			se.printStackTrace();
		}
	}

}