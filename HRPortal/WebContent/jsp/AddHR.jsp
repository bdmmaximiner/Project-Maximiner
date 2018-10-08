<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/regVal" id=register
		method="post">
		<div id="main"></div>
		<div id="main2">
			<h1>
				<b>REGISTRATION</b>
			</h1>
			<div id="container">
				<div class="row">
					<div class="col-md-6">


						<div class="form-group ">
							<label class="control-label " for="email"> FIRST NAME </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<input type="text" id="first_name" name="first_name"
									class="form-control" pattern="[a-zA-Z]*$"
									placeholder="First Name" required />
							</div>
							<div class="form-group">
								<span id="firstnameInvalid" style="color: red;"> </span>
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label " for="email"> LAST NAME </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<input name="last_name" placeholder="Last Name"
									class="form-control" id="last_name" pattern="[a-zA-Z]*$"
									type="text" required />
							</div>
							<div class="form-group ">
								<span id="lastnameInvalid" style="color: red;"> </span>
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label " for="email"> CONTACT NO. </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone"></span>
								</div>
								<input name="contact_no" pattern="\d*" placeholder="(+91)"
									class="form-control" id="contact_no" type="text"
									pattern="[1-9]{1}[0-9]{9}" maxlength="10" required />
							</div>
						</div>


						<div class="form-group ">
							<label class="control-label " for="email"> USER NAME </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>
								<input name="user_name" placeholder="Username"
									class="form-control" id="user_name" type="text" required />
							</div>
						</div>


						<div class="form-group ">
							<label class="control-label " for="email"> DESIGNATION </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-briefcase"></span>
								</div>
								<select name="designation" class="form-control selectpicker"
									id="designation" required>
									<option value="">Select your Designation</option>
									<option value="3">Team Leader</option>
									<option value="4">Developer</option>
									<option value="5">Manager</option>
									<option value="6">Project Manager</option>
									<option value="7">Junior Developer</option>
									<option value="8">Database Administrator</option>
									<option value="9">Java Developer</option>
									<option value="10">.Net Developer</option>
									<option value="11">Java Developer</option>
									<option value="12">.Net Developer</option>
									<option value="13">Tester</option>
									<option value="14">Network Engineer</option>
									<option value="15">Designing Engineer</option>
									<option value="16">DBA/Data Analyst</option>
									<option value="17">SAP</option>
									<option value="18">Digital Marketing</option>
									<option value="19">Production Engineer</option>
									<option value="20">Quality Engineer</option>
									<option value="21">SQL Engineer</option>
									<option value="22">Technical Support Engineer</option>
									<option value="23">UI Developer</option>
									<option value="24">Liferay Portal Developer</option>
									<option value="25">Tester</option>
									<option value="26">Network Engineer</option>
									<option value="27">Designing Engineer</option>
									<option value="28">DBA/Data Analyst</option>
									<option value="29">SAP</option>
									<option value="30">Digital Marketing</option>
									<option value="31">Production Engineer</option>
									<option value="32">Quality Engineer</option>
									<option value="33">SQL Engineer</option>
									<option value="34">Technical Support Engineer</option>
									<option value="35">UI Developer</option>
									<option value="36">Liferay Portal Developer</option>
								</select>
							</div>
						</div>


						<div class="custom-control custom-radio">
							<label>GENDER</label> <input type="radio"
								class="custom-control-input" name="gender" value="Male" required>MALE
							<input type="radio" class="custom-control-input" name="gender"
								value="Female" required>FEMALE<br>
						</div>
					</div>

					<div class="col-md-6">
						<div class="form-group ">
							<label class="control-label " for="email"> PASSWORD </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>

								</div>
								<input name="user_password" placeholder="Password"
									class="form-control" id="user_password" type="password"
									pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required />
							</div>
						</div>


						<div class="form-group ">
							<label class="control-label " for="email"> CONFIRM
								PASSWORD </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>

								</div>
								<input name="confirm_password" placeholder="Confirm Password"
									class="form-control" id="confirm_password" type="password"
									pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required />
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label " for="email"> DATE OF BIRTH
							</label>
							<div class="input-group" style="width: 400px;">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>

								</div>
								<input name="birth_date" placeholder="Date Of Birth"
									class="form-control datepicker" id="birth_date" type="date"
									required />
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label " for="email"> DATE OF
								JOINING </label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>

								</div>
								<input name="joinig_date" placeholder="Date Of Joining"
									class="form-control datepicker" id="joinig_date" type="date"
									required />
							</div>
						</div>

						<div class="form-group ">
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
						<table>
							<tr>
								<td><LABEL>ADDRESS</LABEL></td>
								<td><textarea class="form-control" name="address"
										id="address" placeholder="Address" required></textarea><br></td>
							</tr>
						</table>
					</div>
				</div>
				<input type="submit" value="Sign-Up" id="submit">

			</div>
		</div>
	</form>

</body>