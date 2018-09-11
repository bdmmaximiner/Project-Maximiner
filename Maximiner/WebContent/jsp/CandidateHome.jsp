<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maximiner Analytics Pvt Ltd</title>

<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
<form name="frm" action="<%=request.getContextPath()%>/career" method="post" enctype="multipart/form-data">
		<div id="main"></div>
		<div id="main2">
			<div class="login100-form-title" style="background-image: url(images/MA.png);">
					<span class="login100-form-title-1">
						 Maximiner Analytics Pvt Ltd
					</span>
				</div>
				
			<div id="container">
				<div class="row">
					<div class="col-md-6">


						<div class="form-group ">
						<br>
							<label class="control-label " for="Firstname"> FIRST NAME </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<input type="text" id="first_name" name="first_name"
									class="form-control" pattern="[a-zA-Z]*$"
									placeholder="First Name" required />
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label " for="Lastname"> LAST NAME </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<input name="last_name" placeholder="Last Name"
									class="form-control" id="last_name" pattern="[a-zA-Z]*$"
									type="text" required />
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label " for="contactno"> CONTACT NO. </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone"></span>
								</div>
								<input name="contact_no" pattern="\d*" placeholder="Contact Number"
									class="form-control" id="contact_no" type="text"
									 maxlength="10" required />
							</div>
						</div>		
						
						<div class="form-group ">
							<label class="control-label " for="contactno"> Education </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone"></span>
								</div>
								<input name="education" placeholder="Education"
									class="form-control" id="contact_no" type="text"
									 maxlength="10" required />
							</div>
						</div>		
							
					</div>

					<div class="col-md-6">
				        <div class="form-group ">
				        <br>
							<label class="control-label " for="email"> E-MAIL </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-envelope"></span>

								</div>
								<input name="email" placeholder="E-Mail Address"
									class="form-control" id="email" type="text"
									pattern="^[a-z0-9_]+@[a-z]+\.([a-z]{2,5})$" required />
							</div>
						</div>
						
						<div class="form-group ">
							<label class="control-label " for="Designation"> DESIGNATION </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-briefcase"></span>
								</div>
								<select name="designation" class="form-control selectpicker"
									id="designation" required>
										
									<option value="11">Java Developer</option>
				
								</select>
							</div>
						</div>
						
						<div class="form-group ">
							<label class="control-label" for="Photo"> Add Photo </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-envelope"></span>

								</div>
								<input name="photo" placeholder="Attach Photo" class="form-control" id="file" type="File" required />
							</div>
						</div>
						
						<div class="form-group ">
							<label class="control-label" for="File"> Attach Latest Resume </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-envelope"></span>

								</div>
								<input name="resume" placeholder="Attach Latest Resume" class="form-control" id="file" type="File" required />
							</div>
						</div>
						
					</div>
				</div>
				
					<div class="container-login100-form-btn">
							<input type="submit" value="Send Information" id="submit" class="login100-form-btn">
			    	</div>
			   
			</div>
		</div>
	</form>




</body>
</html>