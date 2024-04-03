<link rel='stylesheet' href="css/style.css">
<body bgcolor='cyan'>
<header>
	<jsp:include page="header.html"></jsp:include>
</header>
<article style='padding:30px;'>

<form method='post' action='recover1.jsp'>
<table width='450' height=200 align='center' style='border-style:solid;border-width:2px;border-radius:8px;box-shadow:8px 8px 8px #888888;background-color:yellow;'>
<tr>
	<td colspan='2' style='text-align:center;font-family:Arial;font-size:14pt;'><b>Recover Password</b></td>
</tr>
<tr>
	<td><b>Login ID:</b></td>
	<td><input type='text' name='loginid'></td>
</tr>
<tr>	
	<td align='center'><input type='submit' value='SUBMIT' class='btn'></td>
	<td align='center'><input type='reset' value='RESET' class='btn'></td>
</tr>
</table>
</form>
</article>

<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>
</body>
