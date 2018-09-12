<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maximiner Sample</title>
</head>
<body>
<form name="frm" method="post" action="<%=request.getContextPath()%>/samplePDF" enctype="multipart/form-data">

Firstname:<input type="text" name="first_name"><br>
LastName:<input type="text" name="last_name"><br>
Contact Number:<input type="text" name="contact_no"><br>
Education:<input type="text" name="education"><br>
Email:<input type="text" name="email"><br>
Designation:<input type="text" name="designation"><br>
Photo:<input type="File" name="photo"><br>
Resume:<input type="File" name="resume"><br>

<input type="submit" name="submit" value="submit">

</form>
</body>
</html>