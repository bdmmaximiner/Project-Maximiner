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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<script>
	$(document)
			.ready(
					function() {
						var i = 1;
						var j = 1;
						$('#add')
								.click(
										function() {
											i++;
											$('#dynamic_field')
													.append(
															"<tr id='row"+i+"'><td><input type='text' name='qualification' placeholder='Enter Qualification' class='form-control name_list' /></td> <td><input type='text' name='yearofpassing' placeholder='Year of Passing' class='form-control name_list' /></td> <td><input type='text' name='percentage' placeholder='Enter Percentage' class='form-control name_list' /></td> <td><input type='text' name='university' placeholder='Enter University' class='form-control name_list' /></td><td><button type='button' name='remove' id='"+i+"' class='btn btn-danger btn_remove'>X</button></td></tr>");
										});

						$('#plus')
								.click(
										function() {
											j++;
											$('#dynamic_field_2')
													.append(
															"<tr id='row_2"+j+"'><td><input type='text' name='companyname' placeholder='Enter The Company Name' class='form-control name_list' /></td> <td><input type='text' name='from_date' placeholder='Enter From Date' class='form-control name_list' /></td> <td><input type='text' name='To_date' placeholder='Enter To Date' class='form-control name_list' /></td> <td><input type='text' name='designation' placeholder='Enter Designation' class='form-control name_list' /></td> <td><input type='text' name='compensation' placeholder='Enter Compensation' class='form-control name_list' /></td> <td><input type='text' name='nature' placeholder='Enter Nature of Responsibilities' class='form-control name_list' /></td> <td><input type='text' name='reason' placeholder='Enter Reason for Leave' class='form-control name_list' /></td><td><button type='button' name='remove' id='"+j+"' class='btn btn-danger btn_remove_2'>X</button></td></tr>");
										});

						$(document).on('click', '.btn_remove', function() {
							var button_id = $(this).attr("id");
							$('#row' + button_id + '').remove();
						});

						$(document).on('click', '.btn_remove_2', function() {
							var button_id_2 = $(this).attr("id");
							$('#row_2' + button_id_2 + '').remove();
						});

					});
</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.czMore-1.5.3.2.js"></script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/addEmp" id=register
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
							class="form-control" pattern="[a-zA-Z]*$" placeholder="Name" />
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
							type="text" />
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
							class="form-control" id="contact_no" type="text" maxlength="10" />
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
							id="user_name" type="text" />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="location">Location</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="location" placeholder="Location" class="form-control"
							id="Location" type="text" />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="project">Project</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="project" placeholder="Project" class="form-control"
							id="project" type="text" />
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
			<div class="col-md-4">
				<div class="form-group ">
					<label class="control-label " for="email"> Father Name </label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input type="text" id="father name" name="father_name"
							class="form-control" placeholder="father name" />
					</div>
					<div class="form-group">
						<span id="firstnameInvalid" style="color: red;"> </span>
					</div>
				</div>

				<label class="control-label " for="email"> Gender </label> <select
					class="form-control" id="gender" name="gender">
					<option value="Administration">Male</option>
					<option value="Human Resource">Female</option>


				</select> <br>

				<div class="form-group ">
					<label class="control-label" for="address"> Address </label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-phone"></span>
						</div>
						<input name="address" placeholder="Address" class="form-control"
							id="religion" type="text" maxlength="10" />
					</div>
				</div>






				<div class="form-group ">
					<label class="control-label" for="empid"> Religion </label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-phone"></span>
						</div>
						<input name="religion" placeholder="Religion" class="form-control"
							id="religion" type="text" maxlength="10" />
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="form-group ">
					<label class="control-label " for="date of birth"> Date Of
						Birth </label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="dob" placeholder="dob" class="form-control" id="dob"
							type="date" />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="Nationality">Nationality</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="nationality" placeholder="Nationality"
							class="form-control" id="nationality" type="text" />
					</div>
				</div>


				<div class="form-group ">
					<label class="control-label " for="mothername">Mother Name</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="mother_name" placeholder="Mothername"
							class="form-control" id="mothername" type="text" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label" for="emailid">Email ID</label>
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input name="email" placeholder="Email ID" class="form-control"
							id="email" type="text" />
					</div>
				</div>

			</div>
		</div>

		<hr color="black">

		<div class="container-fluid">
			<div class="col-md-4">
				<h5>
					<b>Languages Known</b>
				</h5>

				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="language" placeholder="Languages Separated by Commas"
						class="form-control" id="languages" type="text" />
				</div>
			</div>
		</div>

		<hr color="black">

		<div class="container-fluid">

			<div class="col-md-4">
				<label class="control-label" for="marital">Marital Status</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="marital" placeholder="Marital Status"
						class="form-control" id="marital" type="text" />
				</div>
				<br> <label class="control-label" for="Spouse_name">Spouse
					Name(If Married)</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="spouse_name" placeholder="Spouse Name"
						class="form-control" id="Spouse_name" type="text" />
				</div>
				<br> <label class="control-label" for="Cn_Ph">Contact
					Person name and Phone No .in Case Of Emergency</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="contact_em" placeholder="Contact" class="form-control"
						id="Cn_Ph" type="text" />
				</div>

			</div>
			<div class="col-md-4">

				<label class="control-label" for="aadhar">Aadhar Number</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="aadhar" placeholder="Aadhar Number"
						class="form-control" id="aadhar" type="text" />
				</div>
				<br> <label class="control-label" for="Bank_No">Bank
					Account Number</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="Bank_No" placeholder="Bank Account Number"
						class="form-control" id="Bank_No" type="text" />
				</div>
				<br> <label class="control-label" for="PAN">PAN Card
					Number</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="PAN" placeholder="PAN Card Number"
						class="form-control" id="PAN" type="text" />
				</div>

				<br> <label class="control-label" for="PAN">Date Of
					Joining</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="doj" placeholder="Date Of Joining"
						class="form-control" id="doj" type="date" />
				</div>

			</div>
			<div class="col-md-4">

				<label class="control-label" for="blood">Blood Group</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="blood" placeholder="Blood Group" class="form-control"
						id="blood" type="text" />

				</div>
				<br> <label class="control-label" for="passport">Passport
					Number</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="passport" placeholder="Passport Number"
						class="form-control" id="passport" type="text" />


				</div>
				<br> <label class="control-label" for="valid">Valid
					Upto</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="valid" placeholder="Valid Upto" class="form-control"
						id="valid" type="date" />


				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="col-md-4">

				<br> <label class="control-label" for="nominee">Nominee's
					Name</label>
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input name="nominee" placeholder="Nominee's Name"
						class="form-control" id="nominee" type="text" />

				</div>
			</div>


		</div>
		<hr class="hr-primary">


		<!-- 		<div class="well clearfix"> -->
		<!-- 			<div id="czContainer"> -->
		<!-- 				<div id="first"> -->
		<!-- 					<div class="recordset"> -->
		<!-- 						<div class="fieldRow clearfix"> -->
		<!-- 							<div class="col-md-5"> -->
		<!-- 								<div id="div_id_stock_1_service" class="form-group"> -->
		<!-- 									<label for="id_stock_1_product" -->
		<!-- 										class="control-label  Field"> Product<span -->
		<!-- 										class="asteriskField">*</span> -->
		<!-- 									</label> -->
		<!-- 									<div class="controls "> -->
		<!-- 										<input type="text" name="stock_1_product" -->
		<!-- 											id="id_stock_1_product" class="textinput form-control" /> -->
		<!-- 									</div> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 							<div class="col-md-3"> -->
		<!-- 								<div id="div_id_stock_1_unit" class="form-group"> -->
		<!-- 									<label for="id_stock_1_unit" -->
		<!-- 										class="control-label  Field"> Unit<span -->
		<!-- 										class="asteriskField">*</span> -->
		<!-- 									</label> -->
		<!-- 									<div class="controls "> -->
		<!-- 										<select class="select form-control" id="id_stock_1_unit" -->
		<!-- 											name="stock_1_unit"><option value="" -->
		<!-- 												selected="selected">---------</option> -->
		<!-- 											<option value="1">1/2liter</option></select> -->
		<!-- 									</div> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 							<div class="col-md-3"> -->
		<!-- 								<div id="div_id_stock_1_quantity" class="form-group"> -->
		<!-- 									<label for="id_stock_1_quantity" -->
		<!-- 										class="control-label  Field"> Quantity<span -->
		<!-- 										class="asteriskField">*</span> -->
		<!-- 									</label> -->
		<!-- 									<div class="controls "> -->
		<!-- 										<input class="numberinput form-control" -->
		<!-- 											id="id_stock_1_quantity" name="stock_1_quantity" step="0.01" -->
		<!-- 											type="number" /> -->
		<!-- 									</div> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</div> -->

		<div class="container-fluid">
			<div class="col-md-12">
				<h3>Educational Qualifications</h3>
				<div class="table-responsive">
					<table class="table" id="dynamic_field">
						<tr>
							<td><input type="text" name="qualification"
								placeholder="Enter The Qualifications"
								class="form-control name_list" /></td>
							<td><input type="text" name="yearofpassing"
								placeholder="Year of Passing" class="form-control name_list" /></td>
							<td><input type="text" name="percentage"
								placeholder="Enter Percentage" class="form-control name_list" /></td>
							<td><input type="text" name="university"
								placeholder="Enter University" class="form-control name_list" /></td>
							<td><button type="button" name="add" id="add"
									class="btn btn-success">
									<i class="fa fa-plus"></i>
								</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

		<div class="container-fluid">
			<div class="col-md-12">
				<h3>Previous Work Experience</h3>
				<div class="table-responsive">
					<table class="table" id="dynamic_field_2">
						<tr>
							<td><input type="text" name="companyname"
								placeholder="Enter The Company Name"
								class="form-control name_list" /></td>

							<td><input type="text" name="from_date"
								placeholder="Enter From Date" class="form-control name_list" /></td>

							<td><input type="text" name="To_date"
								placeholder="Enter To Date" class="form-control name_list" /></td>

							<td><input type="text" name="designation"
								placeholder="Enter Designation" class="form-control name_list" /></td>

							<td><input type="text" name="compensation"
								placeholder="Enter Compensation" class="form-control name_list" /></td>

							<td><input type="text" name="nature"
								placeholder="Enter Nature of Responsibilities"
								class="form-control name_list" /></td>

							<td><input type="text" name="reason"
								placeholder="Enter Reason for Leave"
								class="form-control name_list" /></td>

							<td><button type="button" name="plus" id="plus"
									class="btn btn-success">
									<i class="fa fa-plus"></i>
								</button></td>
						</tr>
					</table>
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
