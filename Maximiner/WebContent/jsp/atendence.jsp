<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="com.maximiner.OracalDatabaseConnect"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page session="false"%>
<%
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		con = new OracalDatabaseConnect().Connect();
		// 		stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		// 		System.out.println(
		// 				"select * from SIGNUP where ID ='" + (String) getServletContext().getAttribute("LID") + "'");
		// 		rs = stmt.executeQuery(
		// 				"select * from SIGNUP where ID ='" + (String) getServletContext().getAttribute("LID") + "'");
	} catch (Exception e) {

		e.printStackTrace();
	}
%>
<html lang="en">
<head>
<title>Maximiner</title>
<!-- <script> -->
<!-- // function showCustomer(str) { // var xhttp; // if (str == "") { // -->
<!-- document.getElementById("txtHint").innerHTML = ""; // return; // } // -->
<!-- xhttp = new XMLHttpRequest(); // xhttp.onreadystatechange = function() { -->
<!-- // if (this.readyState == 4 && this.status == 200) { // -->
<!-- document.getElementById("txtHint").innerHTML = this.responseText; // } -->
<!-- // }; // xhttp.open("GET", -->
<!-- "http://localhost:8080/Maximiner/GetEmployee?q=" + str,true); // -->
<!-- xhttp.send(); // } -->
<!--</script> -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/GetEmployee" method="get">
		<div align="center" class="container">
			<select class="col-sm-3 form-control" name="ddlViewBy" id="ddlViewBy">
				<option value="67">67</option>
				<option value="68">68</option>
			</select>
		</div>
		<input type="submit" value="OK">
	</form>
	<!-- 	<div class="container" id="txtHint"> -->
	<!-- 		<!--  Contextual classes can be used to color the table, table rows or table cells. The classes that can be used are: .table-primary, .table-success, .table-info, .table-warning, .table-danger, .table-active, .table-secondary, .table-light and .table-dark: -->
	<!-- 		<table class="table"> -->
	<!-- 			<thead> -->
	<!-- 				<tr> -->
	<!-- 					<th>Date</th> -->
	<!-- 					<th>EMPNO</th> -->
	<!-- 					<th>Name</th> -->
	<!-- 					<th>Presence</th> -->
	<!-- 				</tr> -->
	<!-- 			</thead> -->
	<!-- 			<tbody> -->

	<!-- 			</tbody> -->
	<!-- 		</table> -->
	<!-- 	</div> -->

</body>
</html>