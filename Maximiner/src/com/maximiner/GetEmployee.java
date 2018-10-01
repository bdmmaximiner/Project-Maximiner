package com.maximiner;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetEmployee")
public class GetEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = request.getRequestDispatcher("jsp/atendence.jsp");
		rd.include(request, response);
		try {
			con = new OracalDatabaseConnect().Connect();
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = stmt.executeQuery(
					"select * from ATTN where upper(EMPNO) =upper('" + request.getParameter("ddlViewBy") + "')");
			out.println("<script>");
			out.println("$(document).ready(function() {");

			out.println("document.getElementById('ddlViewBy').value=\'" + request.getParameter("ddlViewBy") + "\';");

			out.println("});");
			out.println("</script>");
			out.println("<div class='container' id='txtHint'>");
			out.println("<table class='table'>");
			out.println("<thead>");
			out.println("<tr>");
			out.println("<th>Date</th>");
			out.println("<th>EMPNO</th>");
			out.println("<th>Name</th>");
			out.println("<th>Presence</th>");
			out.println("</tr>");
			out.println("</thead>");
			out.println("<tbody>");
			while (rs.next()) {
				if (rs.getString(5).toString().equals("True")) {
					out.println("<tr class='success'><td><b>" + rs.getString(2) + "</b></td>");
				} else {
					out.println("<tr class='danger'><td><b>" + rs.getString(2) + "</b></td>");
				}
				out.println("<td>" + rs.getString(3) + "</td>");
				out.println("<td>" + rs.getString(4) + "</td>");
				out.println("<td>" + rs.getString(5) + "</td></tr>");
			}
			out.println("");
			out.println("</tbody>");
			out.println("</table>");
			out.println("</div>");
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}
