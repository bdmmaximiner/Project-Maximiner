package com.hr;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maximiner.OracalDatabaseConnect;

@WebServlet("/addEmp")
public class addEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Statement stmt = null;
		InputStream inputstream2 = null;
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String Name = request.getParameter("name");
		String Designation = request.getParameter("designation");
		String Emp_ID = request.getParameter("emp_id");
		String Dept = request.getParameter("dept");
		String Location = request.getParameter("location");
		String Father = request.getParameter("father_name");
		String Gender = request.getParameter("gender");
		String Address = request.getParameter("address");
		String Religious = request.getParameter("religious");
		String DOB = request.getParameter("dob");
		String Nationality = request.getParameter("nationality");
		String Mother = request.getParameter("mother_name");
		String Email = request.getParameter("email");
		String Languages = request.getParameter("languages");
		String Marital = request.getParameter("marital");
		String Spouse = request.getParameter("spouse_name");
		String Contact = request.getParameter("contact_em");
		String Adhar = request.getParameter("aadhar");
		String Bank = request.getParameter("Bank_No");
		String PAN = request.getParameter("PAN");
		String DateJ = request.getParameter("doj");
		String Blood = request.getParameter("blood");
		String Passport = request.getParameter("passport");
		String Valid = request.getParameter("valid");
		String Nomines = request.getParameter("nominee");
		String[] qualification = request.getParameterValues("qualification");
		String[] yearofpassing = request.getParameterValues("yearofpassing");
		String[] percentage = request.getParameterValues("percentage");
		String[] university = request.getParameterValues("university");

		for (int i = 0; i < qualification.length; i++)
			System.out.println(qualification[i]);

		try {
			Connection con = new OracalDatabaseConnect().Connect();
			PreparedStatement preparedStatement = null;
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String insertTableSQL = "INSERT INTO QUALIFICATION(QUALIFICATION, YEAR_OF_PASSING, PERCENTAGE, UNIVERSITY,EMP_ID) VALUES"
					+ "(?,?,?,?,?)";
			preparedStatement = con.prepareStatement(insertTableSQL);
			for (int i = 0; i < qualification.length; i++) {

				preparedStatement.setString(1, qualification[i]);
				preparedStatement.setString(2, yearofpassing[i]);
				preparedStatement.setString(3, percentage[i]);
				preparedStatement.setString(4, university[i]);
				preparedStatement.setString(5, Emp_ID);
				preparedStatement.addBatch();
			}

			preparedStatement.executeBatch();

		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
