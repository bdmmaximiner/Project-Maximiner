<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" media="all">

<title>ADMIN PAGE</title>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="com.gaganventures.OracalDatabaseConnect"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.http.HttpSession"%>


<%
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;

	try {
		con = new OracalDatabaseConnect().Connect();
		stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

		stmt.executeQuery("DECLARE \r\n" + "    NCOUNT NUMBER; \r\n" + "    V_SQL  LONG; \r\n"
				+ "    V_SQL1 LONG; \r\n" + "    TRIG   LONG; \r\n" + "BEGIN \r\n" + "    SELECT COUNT(*) \r\n"
				+ "    INTO   NCOUNT \r\n" + "    FROM   DBA_TABLES \r\n"
				+ "    WHERE  TABLE_NAME = 'SALES'; \r\n" + "\r\n" + "    IF ( NCOUNT <= 0 ) THEN \r\n"
				+ "      V_SQL := ' CREATE TABLE SALES(  ID NUMBER(15) NOT NULL , HEADING VARCHAR2(50) NOT NULL , MESSAGE VARCHAR2(500) NOT NULL ,IMAGE CLOB NOT NULL ,CONSTRAINT SALES_PK PRIMARY KEY (ID)  ENABLE )'; \r\n"
				+ "\r\n" + "      V_SQL1 := \r\n"
				+ "      'CREATE SEQUENCE SALES_SEQ MINVALUE 1 NOMAXVALUE INCREMENT BY 1'; \r\n" + "\r\n"
				+ "      TRIG := 'CREATE TRIGGER SALES_TRIGGER BEFORE INSERT ON SALES REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW  BEGIN  SELECT SALES_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;  END;'; \r\n"
				+ "\r\n" + "      EXECUTE IMMEDIATE V_SQL; \r\n" + "\r\n"
				+ "      EXECUTE IMMEDIATE V_SQL1; \r\n" + "\r\n" + "      EXECUTE IMMEDIATE TRIG; \r\n"
				+ "    END IF; \r\n" + "END; ");
		con.commit();
%>
<%
	System.out.println("h");
	} catch (Exception ex) {
		ex.printStackTrace();

	}
%>
</head>
<body>
	<form id=SignUP action="${pageContext.request.contextPath}/AdminPage"
		enctype="multipart/form-data" method="post">
		<div id="main">
			<h1>PROJECTS FOR SALE</h1>
			<br>
		</div>
		<div id="login">
			<input type="text" name="imgsrc" id=imgsrc value="">
			<table>
				<tr>
					<td><label> GIVE PROJECT NAME</label></td>
					<td><input type="text" name="NAME" id=NAME
						placeholder="enter the name of project"><br> <br></td>
				</tr>


				<tr>
					<td><label> UPLOAD IMAGE</label></td>
					<td><input type="file" name="file" placeholder="upload image"
						id="files" name="files" multiple accept="image/*"> <span
						id="message7"></span><br />
						<div id="selectedFiles"></div></td>
				</tr>
				<tr>
					<td><label> GIVE DESCRIPTION</label></td>
					<td><input type="text" name="DES" ID="DES"
						placeholder="give description"></td>
				</tr>

			</table>
			<input type="submit" name="bttn" value="submit"
				class="btn btn-primary">
		</div>
	</form>
	<script>
		var selDiv = "";

		document.addEventListener("DOMContentLoaded", init, false);

		function init() {
			document.querySelector('#files').addEventListener('change',
					handleFileSelect, false);
			selDiv = document.querySelector("#selectedFiles");
		}

		function handleFileSelect(e) {

			if (!e.target.files || !window.FileReader)
				return;

			selDiv.innerHTML = "";

			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			filesArr.forEach(function(f) {
				if (!f.type.match("image.*")) {
					return;
				}

				var reader = new FileReader();
				reader.onload = function(e) {
					var html = "<img src=\"" + e.target.result + "\">" + f.name
							+ "<br clear=\"left\"/>";
					document.getElementById('imgsrc').value = e.target.result;
					selDiv.innerHTML += html;
				}
				reader.readAsDataURL(f);

			});

		}
	</script>
</body>
</html>