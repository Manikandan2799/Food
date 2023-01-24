<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

%>
<center>
    <img src="Images/112.gif" height=200 width=200><br>
    You must logged in first.<br/>
    <a href="index.jsp" style="text-decoration:none;font-size:23px;color:#009afd;padding-top:23px">Please Login</a>
</center>
<% } else {

%>
<html><head><title>Thank you</title>
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
            body,div,ul,li,p,h1{
                font-family:"Comic Sans Ms";}
                  h1,div{text-align :center;}
            
            #header{
                height:180px;
                
            }
            #header .logo {
               background-color:#191970;
                height:100px;
            }
            #header .logo a{
                padding-center:350px;
                color:white;
                text-decoration:none;
                font-size:40px;
                text-align:center;
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
                text-align: center;
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
                text-decoration:underline;

            }
            #navigation li.active a {
                transition:900ms;
                color: #fff;
                padding:12px;
                background-color:transparent;
                font-size:20px;
                border: 2px solid white;
                border-radius:40px;
            }
            .blink {
                animation: blinker 1.5s linear infinite;
               
                
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }
           
        </style>
        <div id="header">
     <div class ="star-rating"id="rating-alert" style="display:none; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
    <p>Please rate our app</p>
    <form id="rating-form">
        <input type="radio" id="star1" name="rating" value="1"/><label for="star1"></label>
        <input type="radio" id="star2" name="rating" value="2"/><label for="star2"></label>
        <input type="radio" id="star3" name="rating" value="3"/><label for="star3"></label>
        <input type="radio" id="star4" name="rating" value="4"/><label for="star4"></label>
        <input type="radio" id="star5" name="rating" value="5"/><label for="star5"></label>
        <button type="submit">Submit</button>
    </form>
    <div id="rating-message" style="display:none;"></div>
</div>
     <script>
     setTimeout(() => {
    	    document.getElementById("rating-alert").style.display = "block";
    	}, 3000);

     
     const ratingForm = document.getElementById("rating-form");

     ratingForm.addEventListener("submit", (event) => {
         event.preventDefault();
         // Get the value of the selected radio button
         const rating = ratingForm.elements.rating.value;
         // Send the rating to the server using AJAX or a form submission
         document.getElementById("rating-form").style.display = "none";
         document.getElementById("rating-message").innerHTML = "Thanks for your rating!";
         document.getElementById("rating-message").style.display = "block";
     });
</script>
            <div>
                <div class="logo">
                    <a href="index.jsp">Shri Balaji Bhavan</a>
                   <span id="wish"><img src=https://cdn-icons-png.flaticon.com/512/34/34627.png height=40 width=40></span>
                    
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
                           <a href="logout.jsp">Log out <b style="color:red">[  <%out.print(session.getAttribute("userid")); %> ]</b></a>	
                           
                       </li>	
                    </ul>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <h1><p>&#128525;</p>Thank you...<b style="color:orange">  <%out.print(session.getAttribute("userid")); %>  </b>for Using Our Services.....<br>
        <br>
        
        
        
        
        <marquee behaviour ="scroll" class="blink"  direction ="right" scrollamount="18">Your order will delivered to you within 10 minutes...</marquee></h1>
        
 <footer>
     <div class="jumbotron text-center" style="margin-bottom:50px">
        <p class="">All rights Reserved.. ! 2022</p>
    </div>
 </footer>


</body>

</html>

    <% }%>