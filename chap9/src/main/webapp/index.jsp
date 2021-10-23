<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="mainindex.css" type="text/css" />
</head>
<body>
	<div class="card">
		<div class="container">
			<h1>CD list</h1>
			<div class="cd"></div>
			<table>
				<tr>
					<th>Description</th>
					<th class="right">Price</th>
					<th>&nbsp;</th>
				</tr>
				<tr>
					<td>&nbsp 86 (the band) - True Life Songs and Pictures</td>
					<td class="right">$14.95</td>
					<td><form action="cart" method="post">
							<input type="hidden" name="productCode" value="8601"> <input
								type="submit" value="Add To Cart" id="submit">
						</form></td>
				</tr>
				<tr>
					<td>&nbsp Paddlefoot - The first CD</td>
					<td class="right">$12.95</td>
					<td><form action="cart" method="post">
							<input type="hidden" name="productCode" value="pf01"> <input
								type="submit" value="Add To Cart" id="submit">
						</form></td>
				</tr>
				<tr>
					<td>&nbsp Paddlefoot - The second CD</td>
					<td class="right">$14.95</td>
					<td><form action="cart" method="post">
							<input type="hidden" name="productCode" value="pf02"> <input
								type="submit" value="Add To Cart" id="submit">
						</form></td>
				</tr>
				<tr>
					<td>&nbsp Joe Rut - Genuine Wood Grained Finish</td>
					<td class="right">$14.95</td>
					<td><form action="cart" method="post">
							<input type="hidden" name="productCode" value="jr01"> <input
								type="submit" value="Add To Cart" id="submit">
						</form></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>