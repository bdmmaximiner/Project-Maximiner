<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/regVal" id=register
		method="post">
		<h1>
			<b>REGISTRATION</b>
		</h1>
		<div class="container-fluid">
			<div class="col-md-4">
				<div class="form-group ">
					<label class="control-label " for="email"> NAME </label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input type="text" id="first_name" name="name"
							class="form-control" pattern="[a-zA-Z]*$" placeholder="Name"
							required />
					</div>
					<div class="form-group">
						<span id="firstnameInvalid" style="color: red;"> </span>
					</div>
				</div>

				<div class="form-group ">
					<label class="control-label " for="email">Designation</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="designation" placeholder="Designation"
							class="form-control" id="last_name" pattern="[a-zA-Z]*$"
							type="text" required />
					</div>
					<div class="form-group ">
						<span id="lastnameInvalid" style="color: red;"> </span>
					</div>
				</div>

				<div class="form-group ">
					<label class="control-label " for="empid"> Employee ID</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-phone"></span>
						</div>
						<input name="emp_id" pattern="\d*" placeholder="Employee ID"
							class="form-control" id="contact_no" type="text" maxlength="10"
							required />
					</div>
				</div>

			</div>



			<div class="col-md-4">
				<div class="form-group ">
					<label class="control-label " for="department"> Department
					</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="dept" placeholder="Department" class="form-control"
							id="user_name" type="text" required />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="location">Location</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="location" placeholder="Location" class="form-control"
							id="Location" type="text" required />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="project">Project</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="project" placeholder="Project" class="form-control"
							id="Location" type="text" required />
					</div>
				</div>
			</div>
			
			
			<div class="col-md-4">
				<input type="file" name="file" placeholder="upload image" id="files"
					name="files" multiple accept="image/*">
				<div id="selectedFiles"></div>
			</div>
		</div>

		<hr color="black">


		<div class="container-fluid">
			<h5>
				<b>Personal Details</b>
			</h5>
			<div class="container-fluid">
				<div class="col-md-4">
					<div class="form-group ">
						<label class="control-label " for="email"> Father Name </label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<input type="text" id="father name" name="father_name"
								class="form-control" placeholder="father name" required />
						</div>
						<div class="form-group">
							<span id="firstnameInvalid" style="color: red;"> </span>
						</div>
					</div>

					<label class="control-label " for="email"> Gender </label>
					<select class="form-control" id="gender" name="gender">
						<option value="Administration">Male</option>
						<option value="Human Resource">Female</option>
						

					</select>
					<div class="form-group ">
						<label class="control-label " for="empid"> Religion </label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-phone"></span>
							</div>
							<input name="emp_id" pattern="\d*" placeholder="Religion"
								class="form-control" id="religion" type="text" maxlength="10"
								required />
						</div>
					</div>
					
					
			<div class="col-md-4">
				<div class="form-group ">
					<label class="control-label " for="date of birth"> Date Of Birth
					</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="dept" placeholder="dob" class="form-control"
							id="dob" type="date" required />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="Nationality">Nationality</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="nationality" placeholder="nationality" class="form-control"
							id="nationality" type="text" required />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="project">Mother Name</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="project" placeholder="Project" class="form-control"
							id="Location" type="text" required />
					</div>
				</div>
			</div>
					
					



				</div>
			</div>
		</div>










		<div class="row">
			<div class="col-md-12">
				<input type="submit" value="Sign-Up" id="submit">
			</div>
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
			filesArr
					.forEach(function(f) {
						if (!f.type.match("image.*")) {
							return;
						}

						var reader = new FileReader();
						reader.onload = function(e) {
							var html = "<img style='width:200px;height:200px;'src=\"" + e.target.result + "\">"
									+ f.name + "<br clear=\"left\"/>";
							selDiv.innerHTML += html;
						}
						reader.readAsDataURL(f);

					});

		}
	</script>
</body>