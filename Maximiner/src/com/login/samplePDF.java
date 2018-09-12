package com.login;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/samplePDF")
@MultipartConfig(maxFileSize = 16177215)
public class samplePDF extends HttpServlet {
	// database connection settings
	private String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private String dbUser = "system";
	private String dbPass = "system";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = null;
		String message = null;
		RequestDispatcher rd = null;
		Statement stmt = null;
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String contactno = request.getParameter("contact_no");
		String education = request.getParameter("education");
		String email = request.getParameter("email");
		String designation = request.getParameter("designation");
		InputStream inputStream = null;
		InputStream inputstream2 = null;
		Part filePart = request.getPart("photo");
		if (filePart != null) {
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			inputStream = filePart.getInputStream();
		}
		Part filePart1 = request.getPart("resume");
		if (filePart1 != null) {
			System.out.println(filePart1.getName());
			System.out.println(filePart1.getSize());
			System.out.println(filePart1.getContentType());
			inputstream2 = filePart1.getInputStream();
		}

		try {
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			stmt.executeQuery("DECLARE \r\n" + "    NCOUNT NUMBER; \r\n" + "    V_SQL  LONG; \r\n" + "   \r\n"
					+ "     \r\n" + "BEGIN \r\n" + "    SELECT COUNT(*) \r\n" + "    INTO   NCOUNT \r\n"
					+ "    FROM   DBA_TABLES \r\n" + "    WHERE  TABLE_NAME = 'CAREERS'; \r\n" + "\r\n"
					+ "    IF ( NCOUNT <= 0 ) THEN \r\n" + "      V_SQL := 'CREATE TABLE \"SYSTEM\".\"CAREERS\" \r\n"
					+ "   (	\"FIRST_NAME\" VARCHAR2(100 BYTE), \r\n" + "	\"LAST_NAME\" VARCHAR2(100 BYTE), \r\n"
					+ "	\"CONTACT_NO\" VARCHAR2(100 BYTE), \r\n" + "	\"EDUCATION\" VARCHAR2(100 BYTE), \r\n"
					+ "	\"DESIGNATION\" VARCHAR2(100 BYTE), \r\n" + "	\"EMAIL\" VARCHAR2(100 BYTE), \r\n"
					+ "	\"PHOTO\" BLOB, \r\n" + "	\"RESUME\" BLOB \r\n" + "	 )" + "'; \r\n" + "\r\n"
					+ "      EXECUTE IMMEDIATE V_SQL; \r\n" + "\r\n" + " " + "\r\n" + "   \r\n" + "    END IF; \r\n"
					+ "END; ");

			String sql = "INSERT INTO careers(first_name, last_name, contact_no,education,email,designation,photo,resume) values (?, ?, ?,?,?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, firstName);
			statement.setString(2, lastName);
			statement.setString(3, contactno);
			statement.setString(4, education);
			statement.setString(5, email);
			statement.setString(6, designation);
			conn.commit();
			if (inputStream != null) {
				statement.setBlob(7, inputStream); // Adding the photo object to prepared statement.
			}

			if (inputstream2 != null) {
				statement.setBlob(8, inputstream2); // It will take any file .pdf, .doc, .txts
			}

			int row = statement.executeUpdate();
			if (row > 0) {
				String message1 = "Dear Candidate," + "\n\n"
						+ "You have successfully applied for the job, We will review you application, and get back to you shortly"
						+ "\n\n" + "Thank you," + "\n" + "Team Maximiner";
				SendMail.sendResetMail(email, "Confirmation Mail", message1, "no"); // Data should be update
																					// automatically
				rd = request.getRequestDispatcher("jsp/careers.html");
				rd.forward(request, response);
			}
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage(); // set to information
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
	}
}