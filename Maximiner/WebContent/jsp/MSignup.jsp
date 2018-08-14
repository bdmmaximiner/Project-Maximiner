<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
	href="maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.html">
<script src="ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.html"></script>
<script
	src="maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.html"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<h1>
		<b>REGISTRATION</b>
	</h1>
	<form action="${pageContext.request.contextPath}/regVal" id=mregister
		method="post">
		<div id="id1" align="left">
			<table>
				<tr>
					<td>FIRST NAME</td>
					<td><input name="first_name" placeholder="First Name"
						class="form-control" id="first_name" type="text"><br></td>
				</tr>
				<tr>
					<td>LAST NAME</td>
					<td><input name="last_name" placeholder="Last Name"
						class="form-control" id="last_name" type="text"><br></td>
				</tr>
				<tr>
					<td>CONTACT NO.</td>
					<td><input name="contact_no" pattern="\d*" placeholder="(639)"
						class="form-control" id="contact_no" type="text" maxlength="10"><br></td>
				</tr>
				<tr>
					<td>USER NAME</td>
					<td><input name="user_name" placeholder="Username"
						class="form-control" id="user_name" type="text"><br></td>
				</tr>
				<tr>
					<td>DESIGNATION</td>
					<td><select name="designation"
						class="form-control selectpicker" id="designation">
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
					</select><br></td>
				</tr>

				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" value="Male">Male
						<input type="radio" name="gender" value="Female">Female<br></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input name="user_password" placeholder="Password"
						class="form-control" id="user_password" type="password"><br></td>
				</tr>
				<tr>
					<td>CONFIRM PASSWORD</td>
					<td><input name="confirm_password"
						placeholder="Confirm Password" class="form-control"
						id="confirm_password" type="password"><br></td>
				</tr>
				<tr>
					<td>D.O.B</td>
					<td><input name="birth_date" placeholder="Date Of Birth"
						class="form-control datepicker" id="birth_date" type="date"><br>
					</td>
				</tr>
				<tr>
					<td>D.O.J</td>
					<td><input name="joinig_date" placeholder="Date Of Joining"
						class="form-control datepicker" id="joinig_date" type="date"><br>
					</td>
				</tr>
				<tr>
					<td>E-MAIL</td>
					<td><input name="email" placeholder="E-Mail Address"
						class="form-control" id="email" type="text"><br></td>
				</tr>
				<tr>
					<td>ADDRESS</td>
					<td><textarea class="form-control" name="address" id="address"
							placeholder="Address" required></textarea><br></td>
				</tr>
			</table>
			<input type="submit" value="REGISTER"
				style="background-color: #212F3C; color: white; padding: 20px;">
		</div>
	</form>

</body>