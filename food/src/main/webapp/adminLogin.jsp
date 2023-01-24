<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<head>
  <meta charset="ISO-8859-1">
  <title>Admin login page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
<body>
	
								<script>function showPassword() {
									  var password = document.getElementById("password");
									  var eye = document.getElementById("eye");

									  if (password.type === "password") {
									    password.type = "text";
									    eye.classList.add("fa-eye-slash");
									    eye.classList.remove("fa-eye");
									  } else {
									    password.type = "password";
									    eye.classList.add("fa-eye");
									    eye.classList.remove("fa-eye-slash");
									  }
									}
</script>			
<header >
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7B241C;font-family:Comic Sans Ms">
         <div>
              <a href="" class="navbar-brand"><marquee behaviour ="slide" direction ="right">Shri Balaji Bhavan🌼</marquee></a> 
           <span id="wish"><img src=https://cdn-icons-png.flaticon.com/512/34/34627.png height=40 width=40></span>
             
         </div>

          <ul class="navbar-nav">
             <li><a href="contactus.jsp" class="nav-link">Contact Us</a></li>
             <li><a href="aboutus.jsp" class="nav-link">About us</a></li>
                          <li><a href="logout.jsp" class="nav-link">Log Out</a></li>
             
          </ul>
        </nav>
   </header><br><br>
  <div class="container col-md-20"style="font-family:Comic Sans Ms ">
  <h4>Admin Login:</h4>
    <div class="card"style="background-color:#F5CBA7">
        <div class="card-body" style="font-family:Comic Sans Ms">
              <form  action="adminValidationServlet" method="get">
                  <fieldset class="form-group">
                      <label><i class="fa fa-user"></i>User Name :</label>
                      <input type="text"  class="form-control" name="uname" placeholder="Enter your User Name" value="" required="required">
                   </fieldset>

                   <fieldset class="form-group" >
                       <label><i class="fas fa-unlock-alt"></i>Password :<div class="input-group">
                       <input type="password"  class="form-control" name="pwd" id="password" placeholder="Enter the password" value="" required="required"><div class="input-group-text"><i class="fa fa-eye" id="eye" onclick="showPassword()"></i> 
                   </div></div></label></fieldset>
                   <button type="submit" class="btn btn-success" style="background-color:black"><a href ="<%=request.getContextPath()%>/list">Sign In</a></button>
                         
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