<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
                  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
                  crossorigin="anonymous">
        </head>

        <html>

        <head>
            <title>Shri Balaji Bhavan</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>
         <style>body,div,th,h3,a{
                font-family:"Comic Sans MS";
             }</style>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #191970 ">
                    <div>
                        <a href="item-list.jsp" class="navbar-brand">Shri Balaji Bhavan 🌼</a>
                    </div>

                    <ul class="navbar-nav">
                       
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Items</a></li>
                         <li><a href="logout.jsp" class="nav-link">Log Out</a></li>
                    </ul>
                                             
                    
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${item != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${item == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${item != null}">
                                    Modify Item
                                </c:if>
                                <c:if test="${item == null}">
                                    Add New Item
                                </c:if>
                            </h2>
                        </caption>

                        <fieldset class="form-group">
                            <label>Item Id :</label> <input type="text" value="<c:out value='${item.id}' />" class="form-control" name="id" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Item Name :</label> <input type="text" value="<c:out value='${item.name}' />" class="form-control" name="name" required="required">
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label>Item Category :</label> <input type="text" value="<c:out value='${item.category}' />" class="form-control" name="category" required="required">
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label>Availability :</label> <input type="text" value="<c:out value='${item.availability}' />" class="form-control" name="availability">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Item  Price :</label> <input type="text" value="<c:out value='${item.price}' />" class="form-control" name="rupee">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>
        <footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="">All rights Reserved.. ! 2023</p>
	</div>
</footer>

        </html>