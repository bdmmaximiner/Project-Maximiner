package com.gaganventures;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gaganventures.OracalDatabaseConnect;

@WebServlet("/AdminPage")
@MultipartConfig(maxFileSize = 16177215)
public class AdminPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Connection con = null;
		Statement stmt = null;
		StringBuilder str = new StringBuilder("");
		try {
			con = new OracalDatabaseConnect().Connect();
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			StringBuilder img = new StringBuilder(request.getParameter("imgsrc"));

			str = common.splitTo_clob(img);

			System.out.println("INSERT INTO SALES (HEADING, MESSAGE, IMAGE) VALUES ('"
					+ request.getParameter("NAME").toString() + "','" + request.getParameter("DES") + "'," + str + ")");
			stmt.executeUpdate("INSERT INTO SALES (HEADING, MESSAGE, IMAGE) VALUES ('"
					+ request.getParameter("NAME").toString() + "','" + request.getParameter("DES") + "'," + str + ")");

			RequestDispatcher rd = request.getRequestDispatcher("jsp/form.jsp");
			rd.include(request, response);
			out.println("DONE Bro");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
