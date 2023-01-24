<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
        <head>
            
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        <body>
        <style>body,div,th,h3,a{
                font-family:"Comic Sans MS";
                }
                a,div{
                text-align:center:}
             }</style>
             <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #191970 ">
                    <div>
                        <a href="index.jsp" class="navbar-brand" > Shri Balaji Bhavan 🌼</a>
                                            <span id="wish"><img src=https://cdn-icons-png.flaticon.com/512/34/34627.png height=40 width=40></span>
                        <ul class="navbar-nav"> <li><a href="logout.jsp" class="nav-link">Log Out</a></li>
                        
                    </ul>
                    </div>
                </nav>                
            </header>
            <br>

            <div class="row" style="color:orange">
               

                <div class="container">
                    <h3 class="text-center">List of Items</h3>
                    <hr>
                    <div class="container text-center">
                    
                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success" style="background-color:#DC143C; color:white">Add
     New Items</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Food Name</th>
                                <th>Category</th>
                                <th>Availability</th>
                                <th>Price Details</th>
                                <th>Actions</th>
                          
                            </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach var="item" items="${listItem}">

                                <tr>
                                    <td>
                                        <c:out value="${item.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${item.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${item.category}" />
                                    </td>
                                    <td>
                                        <c:out value="${item.availability}" />
                                    </td>
                                    <td>
                                        <c:out value="Rs.${item.price}" />
                                    </td>
                                     <td><a href="edit?id=<c:out value='${item.id}' />">Modify</a>                  <a href="delete?id=<c:out value='${item.id}' />">Delete</a></td>
                                </tr>
                                </tr>
                            </c:forEach>
                         
                        </tbody>

                    </table>
                </div>
            </div>
        </body>
        <footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">All rights Reserved.. ! 2023</p>
    </div>
 </footer>
</html>

