<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" media="all">

<title>Insert title here</title>
</head>
<body>

	<h1>HOUSE TO BE SOLD</h1>

	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
	<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
	<%@ page import="com.gaganventures.OracalDatabaseConnect"%>
	<%@ page import="javax.servlet.RequestDispatcher"%>
	<%@ page import="javax.servlet.http.HttpSession"%>

	<table id="table">
		<%
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;

			try {
				con = new OracalDatabaseConnect().Connect();
				stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

				rs = stmt.executeQuery("select * from SALES");

				while (rs.next()) {
					System.out.println("h");
		%>

		<tr>
			<th><h1><%=rs.getString("HEADING")%></h1></th>
			<td><img src=<%=rs.getString("IMAGE")%> /></td>
			<td>
				<h3><%=rs.getString("MESSAGE")%></h3>
			</td>
			<td><button type="button">Book Now</button></td>
		</tr>
		<%
			}
				System.out.println("h");
			} catch (Exception ex) {

			}
		%>
	</table>
</body>
</html>