<html><head><title>Post Order</title>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="w3.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
    </head>
    <body>

        <style>
            body,div,ul,li,p,h4{
                font-family:"Comic Sans MS";
             }
             a{
             text-align: center;
             }
             
            #header{
                height:120px;
                display:block;
                background-color:#F5F5F5;
            }
            #header .logo {
                background-color:#191970;
                padding-center:350px;
                text-decoration:none;
                font-size:40px;
                color:white;
            }
            #header .logo a{
                padding-left:550px;
                color:black;
                text-decoration:none;
                font-size:40px;
            }
           
            #navigation {
                display: inline-block;
                list-style: none;
                line-height: 50px;
                margin: 0;
                padding-left: 20;
            }
            #navigation ul {
                display: inline-block;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            #navigation li {
                float: left;
                width: 180px;
                text-align: right;
            }
            #navigation li a {
                color: #616161;
                font-size: 20px;
                text-decoration: none;
            }
            #navigation li a:hover {
                font-size: 20px;
                color: white;
                background-color: #191970;
                border-radius:50px;
                padding:12px;

            }
            #navigation li.active a {
                transition:900ms;
                color: #fff;
                padding:12px;
                background-color:transparent;
                font-size:20px;
                border: 2px solid white;
                border-radius:50px;
            }
        </style>
        <div id="header">
            <div>
                <div class="logo">
                    <a href="index.jsp" style="color:white">Shri Balaji Bhavan🌼</a>
                    <span id="wish"><img src=https://i.pinimg.com/originals/66/22/ab/6622ab37c6db6ac166dfec760a2f2939.gif height=60 width=60></span>
                    
                </div>
                <div id="span">
                    <ul id="navigation">
                         <li>
                            <a href="aboutus.jsp">About us</a>
                        </li>
                        <li>
                            <a href="contactus.jsp">Contact us</a>
                        </li>
                        <li>
                            <a href="logout.jsp">Log out</a> 
                        </li>
                        <b style="color:red">[ <%out.print(session.getAttribute("userid")); %> ]</b>
                        <li>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container col-md-100">
        <h4>Enter Your Delivery Address:</h4>
           <div class="card">
              
              <div class="card-body">
                 <form action="thank.jsp" method="post">
                      <fieldset class="form-group">
                            <label><i class="fa fa-user"></i>Enter Full Name :</label>
                            <input type="text"  class="form-control" name="name" placeholder="Enter the Full Name" required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><i class="fa fa-phone"></i>Enter Mobile Number :</label>
                            <input type="tel" class="form-control" pattern="[6-9]{1}[0-9]{9}" name="phone" placeholder="Enter your phone number" required="required">
                      </fieldset>
                      
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-envelope"></i>Enter Email Address :</label>
                            <input type="email"  class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" name="email" placeholder="Enter your Email id" required="required">
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-city"></i>Select your City :</label>
                            <select class="form-control" name="city">
                                <option value="1" selected>Choose city</option>
                                <option value="chn">Chennai</option>
                                <option value="pvi">Peravurani</option>
                                <option value="pkt">Pattukottai</option>
                                <option value="ndn">Nadangadu</option>
                                <option value="klthr">Kalathur</option>
                                <option value="pdk">Pudukottai</option>
                                <option value="ndm">Nadiyam</option>
                                <option value="nkt">Nattanikottai</option>
                                <option value="tpk">Thirupoornikaadu</option>
                            </select>
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label for="adr"><i class="fas fa-address-card"></i>Address :</label>
                            <input type="text" class="form-control" id="adr" name="address" placeholder="Enter Your Address "required="required">
                      </fieldset>
                       <fieldset class="form-group">
                            <label for="pin"><i class="fas fa-map-pin"></i>Pin Code :</label>
                            <input type="text" class="form-control" pattern = "[1-6]{1}[0-9]{5}" id="pin" name="pin" placeholder="Enter your Pin Code "required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing address</label>
                      </fieldset>
                      <button type="submit" class="btn btn-success">Proceed to Checkout</button>
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