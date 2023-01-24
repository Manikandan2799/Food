<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%

%>
<head>
  <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
<body>
<header >
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7B241C;font-family:Comic Sans Ms">
         <div>
              <a href="" class="navbar-brand"><marquee behaviour ="slide" direction ="right">Shri Balaji Bhavan🌼</marquee></a> 
           <span id="wish"><img src=https://cdn-icons-png.flaticon.com/512/34/34627.png height=40 width=40></span>
             
         </div>
                      
          </ul>
        </nav>
   </header><br><br>
  <div class="container col-md-20"style="font-family:Comic Sans Ms ">
    <div class="card"style="background-color:#F5FFFA">
        <div class="card-body" style="font-family:Comic Sans Ms">
              <form  action="ForgetPassword" method="get">
              <fieldset class="form-group">
                      <label>User Name:</label>
                      <input type="text"  class="form-control" name="uname" placeholder="Enter your User Name" value="" required="required">
                   </fieldset>
                    <fieldset class="form-group">
                      <label>Email :</label>
                      <input type="text"  class="form-control" name="email" placeholder="Enter your User Name" value="" required="required">
                   </fieldset>
                  <fieldset class="form-group">
                      <label>New Password:</label>
                      <input type="text"  class="form-control"  placeholder="Enter New Password" value="" required="required">
                   </fieldset>

                   <fieldset class="form-group" >
                       <label>Confirm Password :
                       <input type="password"  class="form-control" name="password" id="password" placeholder="Confirm New password" value="" required="required">
                  </label></fieldset>
                   <button type="submit" class="btn btn-success" style="background-color:black">Change Password</button>       
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