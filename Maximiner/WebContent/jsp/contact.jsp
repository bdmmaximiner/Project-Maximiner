<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maximiner Analytics Pvt Ltd</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="css/form.css">  
</head>
<body>
      <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h2>Contact Us</h2> 
                    <p> Send us your message and we will get back to you as soon as possible </p>
                    <form role="form" method="post" id="reused_form" action="<%=request.getContextPath()%>/contact"> 
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="name"> Name:</label>
                                <input type="text" class="form-control" id="name" name="name" maxlength="50" required>
                            </div>
                            
                            <div class="col-sm-6 form-group">
                                <label for="email"> Email:</label>
                                <input type="text" class="form-control" id="email" name="email" maxlength="50">
                            </div>
                            
                           
                        </div>
                        <div class="row">
                        
                        	<div class="col-sm-6 form-group">
                                <label for="phone number"> Phone Number:</label>
                                <input type="text" class="form-control" id="subject" name="phonenumber" maxlength="100" required>
                            </div>
                           
                            <div class="col-sm-6 form-group">
                                <label for="subject"> Subject:</label>
                                <input type="text" class="form-control" id="subject" name="subject" maxlength="100" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="name"> Message:</label>
                                <textarea class="form-control" type="textarea" id="message" name="message" placeholder="Your Message Here" maxlength="6000" rows="7"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <button type="submit" class="btn btn-lg btn-success btn-block" id="btnContactUs">Contact Us</button>
                            </div>
                        </div>
                    </form>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Sent your message successfully!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                </div>
            </div>
        </div>
</body>
</html>