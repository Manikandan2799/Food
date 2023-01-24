<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "com.db.controller.ValidateOtp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
ValidateOtp ValidateOtp = new ValidateOtp();
ValidateOtp.getOtp();


%>
<head>
  <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
<body>
<script>function validateForm() {
	  let x = document.forms["form"]["otp"].value;
	  if (x == "<%=ValidateOtp.getOtp()%>"  ) {
		  alert(" Successfully Verified!");
		 
	 sd
	  }
	  else
		  {
		  alert(" Sorry Otp Not Match!");
		   
		  }  
	}</script>
<header >
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7B241C;font-family:Comic Sans Ms">
                      
        </nav>
   </header><br><br>
  <div class="container col-md-20"style="font-family:Comic Sans Ms ">
    <div class="card"style="background-color:white">
        <div class="card-body" style="font-family:Comic Sans Ms">
              <form name=form  action="ForgetPassword" method="get">
              <fieldset class="form-group">
                      <label>Enter OTP:</label>
                      <input type="text"  class="form-control" name="otp" placeholder="Enter your OTP" value="" required="required">
                   </fieldset>
                   
                   <button type="submit" class="btn btn-success" style="background-color:black">Confirm OTP</button>       
              </form>
        </div>
    </div>
  </div>
</body>
<br>
     <div class="jumbotron text-center" style="bottom:4px;">
        <p class="">All rights Reserved.. ! 2023</p>
    </div>
</body>
</html>