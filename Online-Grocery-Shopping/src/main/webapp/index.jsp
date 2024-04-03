
<script type="text/javascript">
	var currentPos = 0;
	var images = [ "back1.jpg", "back2.jpg", "back6.png", "back10.png",
			"back7.jpg" ]

	function change() {
		document.getElementById("image").src = "images/" + images[currentPos];
		currentPos = (currentPos + 1) % images.length;
	}

	setInterval("change()", 3000);
	
</script>

<body bgcolor='white' style='margin-bottom: 100px;'>
	<header>
		<jsp:include page="header.html"></jsp:include>
	</header>

	<article style='padding: 30px;'>
		<center>
		<a href="search.jsp">	<img id="image" src="images/back1.jpg" width='90%' height='90%' ></a>
		</center>
	</article>

	<footer>
		<jsp:include page="footer.html"></jsp:include>
	</footer>
</body>
