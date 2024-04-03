<link rel='stylesheet' href="css/style.css">
<body style="background-image: url('images/search.jpg');">
<header>
	<jsp:include page="header.html"></jsp:include>
</header>
<article style='padding:30px;'>
<form method='post' action='search1.jsp'>
<table align='center' style='background:linen;padding:20px;'>
<tr>
	<td style='padding:10px;'>
	<select name='cat' required>
	<option value=''>Select Category</option>
	<option value='Soap'>Soap</option>
	<option value='Rice'>Rice</option>
	<option value='Oil'>Oil</option>
	<option value='Pulses'>Pulses</option>
	<option value='Fruits'>Fruits</option>
	<option value='Wheat'>Wheat</option>
	</select>
	</td>

	<td><input type='submit' value='Search' class='btn'></td>
</tr>
</table>
</form>
</article>

<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>
</body>
