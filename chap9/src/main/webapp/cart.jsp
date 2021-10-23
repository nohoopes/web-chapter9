<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="maincart.css" type="text/css" />
</head>
<body>
	<div class="card">
		<div class="container">
			<h1>Your cart</h1>

			<table>
				<tr>
					<th>&nbsp Quantity &nbsp</th>
					<th>&nbsp Description &nbsp</th>
					<th>&nbsp Price &nbsp &nbsp</th>
					<th>&nbsp Amount &nbsp &nbsp</th>
					<th></th>
				</tr>

				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<c:forEach var="item" items="${cart.items}">
					<tr>
						<td>
							<form action="" method="post">
								<input type="hidden" name="productCode"
									value="<c:out value='${item.product.code}'/>"> <input
									type=text name="quantity"
									value="<c:out value='${item.quantity}'/>" id="quantity">
								<input type="submit" value="Update" id="submit">
							</form>
						</td>
						<td><c:out value='${item.product.description}' /></td>
						<td>${item.product.priceCurrencyFormat}</td>
						<td>${item.totalCurrencyFormat}</td>
						<td>
							<form action="" method="post">
								<input type="hidden" name="productCode"
									value="<c:out value='${item.product.code}'/>"> <input
									type="hidden" name="quantity" value="0"> <input
									type="submit" value="Remove" id="submit">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>

			<p>
				<b>To change the quantity</b>, enter the new quantity and click on
				the Update button.
			</p>

			<form action="" method="post" class="pad_top]">
				<input type="hidden" name="action" value="shop"> <input
					type="submit" value="Continue Shopping" id="submit1">
			</form>

			<form action="" method="post">
				<input type="hidden" name="action" value="checkout"> <input
					type="submit" value="Checkout" id="submit1">
			</form>
		</div>
	</div>
</body>
</html>