<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Maximiner Password Reset Screen</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	<script type="text/javascript">
	function passvalidate()
	{
	 if(frm.newpass.value!=frm.confirmpass.value)
	  {
		alert("New Password and Confirm password should be same");
		frm.confirmpass.value=null;
		return false;
	   }
	  return true;
	}
	</script>
</head>
<body>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title">
					<span class="login100-form-title-1">
						Reset Password
					</span>
				</div>

				<form name="frm" class="login100-form validate-form" method="post" action="<%=request.getContextPath()%>/PasswordReset">
					<div class="wrap-input100 validate-input m-b-18" data-validate ="User Name is required">
						<span class="label-input100">User Name</span>
						<input class="input100" type="text" name="username" placeholder="Enter your User Name">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate ="New Password is required">
						<span class="label-input100" id="Nmessage" color="red">New Password</span>
						<input class="input100" type="password" name="newpass" placeholder="Enter your New Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate ="Confirm Password is required">
						<span class="label-input100" id="Cmessage" color="">Confirm Password</span>
						<input class="input100" type="password" name="confirmpass" placeholder="Enter your Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onblur="passvalidate();">
						<span class="focus-input100"></span>
					</div>
					
					

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Reset
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
    <script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../vendor/select2/select2.min.js"></script>
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../vendor/countdowntime/countdowntime.js"></script>
	<script src="../js/main.js"></script>



</body>
</html>