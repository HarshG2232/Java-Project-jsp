<link rel='stylesheet' href="css/style.css">
<body style='background:url(images/bg.jpg);background-repeat: no-repeat;background-size:100%;'>
<header>
	<jsp:include page="user_header.jsp"></jsp:include>
</header>

<article style='padding:30px;'>
<form method='post' action='show_order.jsp'>
<table style='background:linen;padding:20px;'>
<tr>
	<td><b>Order No:</b></td>
	<td><input type='number' name='oid' min=1 required></td>
	<td><input type='submit' value='Show' class='btn'></td>
</tr>
</table>
</form>
</article>

<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>

</body>
