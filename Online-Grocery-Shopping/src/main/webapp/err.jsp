<link rel='stylesheet' type='text/css' href='css/style.css'>

        <script type = "text/javascript">
            var currentPos = 0;
            var images = ["back1.jpg","back2.jpg", "back3.jpg", "back4.jpg", "back5.jpg"]

            function change() {
            	document.getElementById("image").src = "images/"+images[currentPos];
                currentPos = (currentPos+1)%images.length;
           }

            setInterval("change()", 3000);
        </script>

<body bgcolor='white' style='margin-bottom:100px;'>
<header>
	<jsp:include page="header.html"></jsp:include>
</header>

<article style='padding:30px;'>
	<center><img id="image" src="images/back1.jpg"></center>

	<div style='position:fixed; top: 300px; left:200px;'>
		<h1 style='color:black;'>Login Failed.</h1>
	</div>
</article>

<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>
</body>


