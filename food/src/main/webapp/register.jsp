<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
    </head>
    <body>
    
    





    
    <style> body,div,ul,li,p{font-family:"Comic Sans MS";}
             div{text-align: center;}</style>
        <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #191970">
         <div>
             <a href="index.jsp" class="navbar-brand">Shri Balaji Bhavan🌼</a>
         </div>

          <ul class="navbar-nav">
             <li><a href="" class="nav-link">Registration Page</a></li>
          </ul>
        </nav>
   </header>
    <br> <br>
    <div class="container col-md-5">
           <div class="card">
              <div class="card-body"style="background-color:#7FFFD4";>
                 <form method="post" action="check.jsp">
                      <fieldset class="form-group">
                            <label><i class="fas fa-file-signature"></i>First Name :</label>
                            <input type="text"  class="form-control" name="fname" placeholder="Enter the First Name" required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><i class="fas fa-file-signature"></i>Last Name :</label>
                            <input type="text"  class="form-control" name="lname" placeholder="Enter the Last Name" required="required">
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-envelope"></i>Email :</label>
                            <input type="text"  name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="form-control" placeholder="Enter your Email" required="required">
                            
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-user"></i>User Name :</label>
                            <input type="text"  class="form-control" name="uname" placeholder="Enter User Name" required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label id="passwordLabel"><i class="fas fa-unlock-alt"></i>Password :</label>
                            <input type="password" pattern="^(?=.*[A-Z])(?=.*[!@#$%^&*])(?=.*[0-9])(?=.*[a-z]).{8,}$" name="pass"  class="form-control" placeholder="Enter the Password" required="required">
                      </fieldset>

                      <button type="submit" class="btn btn-success">Sign up</button>
                       
                      <fieldset class="form-group">
                            <label>Already have account :</label>
                            <a href="index.jsp"><input type="button" class="btn btn-success" value="Sign In"></a>
                      </fieldset>
                 </form>
               </div>
          </div>
      </div>
      <footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">All rights Reserved.. !!! 2023</p>
    </div>
 </footer>
    </body>
</html>