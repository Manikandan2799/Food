<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- JSP code -->
<%-- Loop through the fields and create a quantity field for each --%>
<c:forEach items="${fields}" var="field">
  <div class="field-container">
    <label>${field.name}</label>
    <input type="button" value="-" onclick="decrementQuantity(this)"/>
    <input type="text" class="quantity" value="1" onchange="calculatePrice()"/>
    <input type="button" value="+" onclick="incrementQuantity(this)"/>
  </div>
</c:forEach>

<!-- Display the total price -->
<div id="total-price"></div>

<script>
  // JavaScript code
  function decrementQuantity(element) {
    let input = element.nextElementSibling;
    input.value = Math.max(1, input.value - 1);
    calculatePrice();
  }

  function incrementQuantity(element) {
    let input = element.previousElementSibling;
    input.value = parseInt(input.value) + 1;
    calculatePrice();
  }

  function calculatePrice() {
    let totalPrice = 0;
    let quantityFields = document.getElementsByClassName("quantity");
    for (let i = 0; i < quantityFields.length; i++) {
      let quantity = parseInt(quantityFields[i].value);
      let price = ${field.price};
      totalPrice += quantity * price;
    }
    document.getElementById("total-price").innerHTML = "Total Price: $" + totalPrice;
  }
</script>


</body>
</html>