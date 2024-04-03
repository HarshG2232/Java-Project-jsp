<body style='background:url(images/bg.jpg);background-repeat: no-repeat;background-size:100%;'>
<header>
	<jsp:include page="user_header.jsp"></jsp:include>
</header>

<article style='padding:40px;'>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h3 class="animate-charcter">
					Welcome
					<%=session.getAttribute("uid")%></h3>
			</div>
		</div>
	</div>
</article>
<form method='post' action='disp_prod.jsp'>
<select name='cat' required>
<option value=''>Select Category</option>
<option value='Soap'>Soap</option>
<option value='Rice'>Rice</option>
<option value='Oil'>Oil</option>
<option value='Pulses'>Pulses</option>
<option value='Fruits'>Fruits</option>
<option value='Wheat'>Wheat</option>
</select>
<input type='submit' value='Show' class='btn'>
</form>
<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>
</body>
