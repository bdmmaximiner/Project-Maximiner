<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.html">
<script src="ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.html"></script>
<script src="maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.html"></script>
</head>
<body>
<div class="container">
    <form class="well form-horizontal" action="${pageContext.request.contextPath}/regVal" method="post" id="register_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>
  <div class="alert alert-default text-center hide" role="alert" id="success_message"></div>

<div class="alert alert-danger text-center hide" role="alert" id="alrt-error"></div>
<div class="alert alert-success text-center hide" role="alert" id="alrt-success"></div>
<!-- Text input-->
<div class="row">
  <div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-8 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="first_name" placeholder="First Name" class="form-control" id="first_name" type="text">
    </div>
  </div>
</div>
</div>
<!-- Text input-->
<div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">Last Name</label> 
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="last_name" placeholder="Last Name" class="form-control" id="last_name" type="text">
    </div>
  </div>
</div>
</div>
</div>

<div class="row">
  <div class="col-lg-6">
  <div class="form-group">
  <label class="col-md-4 control-label">Contact No.</label>  
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="contact_no" pattern="\d*" placeholder="(639)" class="form-control" id="contact_no" type="text" maxlength="10">
    </div>
  </div>
</div>
 </div> 
<!-- Text input-->
<div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">Username</label>  
  <div class="col-md-8 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="user_name" placeholder="Username" class="form-control" id="user_name" type="text">
    </div>
  <span class="pull-right hide" id="user-result" style="font-size:85%;"></span>
  </div>
</div>
</div>
</div>
<div class="row">
  <div class="col-lg-6">
  <div class="form-group"> 
  <label class="col-md-4 control-label">Designation</label>
    <div class="col-md-8 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="designation" class="form-control selectpicker" id="designation">
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
</div>
 </div> 
<!-- Text input-->
<div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">Gender</label>  
  <div class="col-md-8 inputGroupContainer">
  <label class="radio-inline">
  <input type="radio" name="gender" value="Male">Male
  </label>
  <label class="radio-inline">
      <input type="radio" name="gender" value="Female">Female
 </label>
  </div>
</div>
</div>
</div>
<div class="row">
  <div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">Password</label> 
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <input name="user_password" placeholder="Password" class="form-control" id="user_password" type="password">
    </div>
  </div>
</div>
</div>
<!-- Text input-->
<div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">Confirm Password</label> 
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <input name="confirm_password" placeholder="Confirm Password" class="form-control" id="confirm_password" type="password">
    </div>
  </div>
</div>
</div>
</div>
<!-- Text input-->
<div class="row">
  <div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">D.O.B</label> 
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  <input name="birth_date" placeholder="Date Of Birth" class="form-control datepicker" id="birth_date" type="text">
    </div>
  </div>
</div>
</div>
<!-- Text input-->
<div class="col-lg-6">
<div class="form-group">
  <label class="col-md-4 control-label">D.O.J</label> 
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  <input name="joining_date" placeholder="Date Of Joining" class="form-control datepicker" id="joining_date" type="text">
    </div>
  </div>
</div>
</div>
</div>
<!-- Text input-->
<div class="row">
  <div class="col-lg-6">
  <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="E-Mail Address" class="form-control" id="email" type="text">
    </div>
  </div>
</div>
</div>

<!-- Text input-->
  <div class="col-lg-6">   
<div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-8 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <textarea class="form-control" name="address" id="address" placeholder="Address" required="required"></textarea>
    </div>
  </div>
</div>
</div>
</div>  
<!-- Select Basic -->

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary existusr" id="btnUserRegister">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
  </div>
</div>

</fieldset>
</form>
</div>

</body>
</html>