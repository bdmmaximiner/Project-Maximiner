package com.hr;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String Emp = request.getParameter("emp");
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
		for (int i = 0; i < qualification.length; i++)
			System.out.println(qualification[i]);

	}

}
