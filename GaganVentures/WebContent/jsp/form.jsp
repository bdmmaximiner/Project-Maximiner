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

<div id="main">
<h1>PROJECTS FOR SALE</h1>
<br>
</div>
<div id="login">
	<table>
		<tr>
	<td>
		<label>
	GIVE PROJECT NAME</label></td>
	<td>
<input type="text" name="name" placeholder="enter the name of project"><br><br></td></tr>


<tr>
<td>
<label>
UPLOAD IMAGE</label></td>
<td><input type="file" name="file" placeholder="upload image" id="files" >
<div id="selectedFiles"></div></td>
</tr>
<tr>
	<td>
		<label>
	GIVE DESCRIPTION</label></td>
	<td>
<input type="text" name="PASS" placeholder="give description"></td></tr>

  </table>
<input type="button" name="bttn" value="submit" class="btn btn-primary">

</div>
</body>
</html>