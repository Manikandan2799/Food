<%@page import="com.db.utils.DbConnection"%>
<html>
    <head>
        <%@ page import ="java.sql.*"%>
        <%@ page import="java.util.*" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
    <center><p>The Session was expired..........</p><br>
    </hr>
    <a href="index.jsp">Click here to login again....</a></center>
    <%} else {
        float sum = 0;
        Connection con = DbConnection.init();
        Statement st = con.createStatement();
        ResultSet rs;
       
    %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirm your Order..</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="css1.css" type="text/css">
    <link rel="stylesheet" href="w3.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

    <style>
        body,div,ul,li,p{
            font-family:Comic Sans MS;

        }
        button{
          font-size:18px;
        }
        #header{
            height:130px;
            display:block;
            background-color: #F5F5F5
        }
        #header .logo a{
            padding-left:450px;
            color:black;
            text-decoration:none;
            font-size:40px;
        }
        #header .logo {
            background-color:#191970;
            
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
            line-height: 10px;
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
            color: black;
            padding:12px;
            background-color:transparent;
            font-size:20px;
            border: 2px solid black;
            border-radius:10px;
        }
        .thead-dark th{color:#fff;background-color:#343a40;border-color:#454d55}.table
    </style>
    <div id="header">
        <div>
            <div class="logo">
                <a href="" style="color:white" height="20px">Shri Balaji Bhavan</a>
                <span id="wish"><img src=https://i.pinimg.com/originals/66/22/ab/6622ab37c6db6ac166dfec760a2f2939.gif height=40 width=40></span>
                
            </div><br>
            <div id="span">
                <ul id="navigation">
                    <li>
                        <a href="#">Locations</a>
                    </li>
                    <li>
                        <a href="#">Our chefs</a>
                    </li>
                    <li>
                        <a href="contactus.jsp">Contact Us</a>
                    </li>
                    <li>
                        <a href="aboutus.jsp">About us</a>
                    </li>
                    <li>
                        <a href="logout.jsp">Log out </a>	
                    </li>
                     <li>
                        <b style="color:red">[ <%out.print(session.getAttribute("userid")); %> ]</b>
                        </li>
                </ul>
            </div>
        </div>
    </div>
    
    

  <script>
  function increment() {
	 
    var target = event.target.getAttribute("data-target");
    var quantity = document.getElementById(target);
    quantity.value++;
    var price = document.getElementById("price_"+target).value;
    var totalPrice = document.getElementById("total_"+target);
    totalPrice.value = parseInt(price) * parseInt(quantity.value);
   
      }
  
  function decrement() {
    var target = event.target.getAttribute("data-target");
    var quantity = document.getElementById(target);
    if (quantity.value > 0) {
      quantity.value--;
      var price = document.getElementById("price_"+target).value;
      var totalPrice = document.getElementById("total_"+target);
      totalPrice.value = parseInt(price) * parseInt(quantity.value);

      }
  }
</script>
  
    <%int grandTotal = 0;
		String[] orderedItems= request.getParameterValues("chk1");
        out.println(" <h1 style='display:underline;color:black;border:2px solid #616161;'>Your cart</h1>");
        out.println("<table class='table table-bordered'> <thead class='thead-dark'><tr><th>Item Name</th><th>Category</th><th>Availability</th><th>Quantity</th><th>Price</th><th>Total</th></tr></thead>");
        if (orderedItems != null) {
            for (int i = 0; i < orderedItems.length; i++) {
            	int total =0;
                st.executeQuery("select id,item_name,category,price_rupee,availability from items where id=" + orderedItems[i] + "");
                rs = st.getResultSet();
                while (rs.next()) {
                	int id=rs.getInt("id");
                    String nameVal = rs.getString("item_name");
                    String category = rs.getString("category");
                    String available = rs.getString("availability");
                    int itemPrice = rs.getInt("price_rupee");
                    int itemTotal=0;
                out.println("<tr>"); 
                out.println("<td>" + nameVal + "</td>");
                out.println("<td>" + category +"</td>");
                out.println("<td>" + available + "</td>");
                out.println("<td> <input type='text' id="+ id +" value='0' readonly> <button type='button' onclick= 'increment()' data-target="+ id +" >+</button><button type='button' onclick= 'decrement()' data-target="+ id +" '>-</button></td>");
                out.println("<td> <div>Rs." + itemPrice +" <input type='hidden' id='price_"+id+"' value="+itemPrice+"></td>");
                out.println("<td>Rs.<input type='text' id='total_"+id+"' value='' readonly></td>");
                out.println("</tr>");
                grandTotal += itemTotal;
                
                
               
            }
        }
            
            out.println("<tr><td style='font-size:30px;'>Total</td><td></td><td style='font-size:30px;'><td></td><td style='font-size:30px;'></td><td>Rs.<input type='text' id='' value='' readonly></td></tr>");

        out.println("<tr></tr><tr colspan='6'><td colspan='6'><div><a href=post.jsp><input type='button' style='width:100%' class='w3-xlarge w3-btn w3-block w3-black' value='Proceed to Checkout'> </div></td></tr>");
 
        } else {
    %>


               
<% }%>
</table>
<tr><td></td></tr></td></tr>
<h4> <a href="success.jsp" style="color:#212121" >Shop more items</a></h4>

<div id="footer" style="height:270px; display:block;" >

</body>
<footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">All rights Reserved.. ! 2023</p>
    </div>
 </footer>
</html>

<%
    }

%>