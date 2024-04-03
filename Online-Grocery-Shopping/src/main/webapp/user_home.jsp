<body
	style='background: url(images/bg.jpg); background-repeat: no-repeat; background-size: 100%;'>
	<header>
		<jsp:include page="user_header.jsp"></jsp:include>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h3 class="animate-charcter">
					Welcome
					<%=session.getAttribute("uid")%></h3>
			</div>
		</div>
	</div>
	<table width="100%" >

		<tr>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/12.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Pure &amp; Gentle
					Bathing Bar (125gmx4)</p>
				<p>Rs.240.0/-(-3.0%)</p> <a href="add_cart.jsp?pid=12"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/21.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Indrayani Rice
					(5kg)</p>
				<p>Rs.285.0/-(-5.0%)</p> <a href="add_cart.jsp?pid=21"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/36.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Sunflower Refined
					Oil - Sun Lite (1Ltr)</p>
				<p>Rs.97.0/-(-6.0%)</p> <a href="add_cart.jsp?pid=36"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
		</tr>
		<tr>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/13.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Bathing Soap -
					Cucumber &amp; Coconut (125gmx4)</p>
				<p>Rs.176.0/-(-3.0%)</p> <a href="add_cart.jsp?pid=13"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/22.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Ambemohar Rice
					(5kg)</p>
				<p>Rs.389.0/-(-5.0%)</p> <a href="add_cart.jsp?pid=22"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/37.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Mustard Oil -
					(Kachi Ghani) (500ml)</p>
				<p>Rs.67.0/-(-6.0%)</p> <a href="add_cart.jsp?pid=37"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
		</tr>
		<tr>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/14.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Bathing Bar Soap
					- Cream Beauty (100gmx3)</p>
				<p>Rs.157.0/-(-3.0%)</p> <a href="add_cart.jsp?pid=14"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/24.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Basmati Rice
					(5kg)</p>
				<p>Rs.329.0/-(-5.0%)</p> <a href="add_cart.jsp?pid=24"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
			<td style="padding: 15px; text-align: center;" class="products"><img
				src="images/38.jpg" width="200" height="200/"><br>
				<p style="font-size: 14pt; font-weight: bold;">Coconut Oil 100%
					Pure (100ml)</p>
				<p>Rs.39.0/-(-6.0%)</p> <a href="add_cart.jsp?pid=38"
				style="font-size: 12pt; padding: 5px; background: red; color: white; border-radius: 5px; text-decoration: none; box-shadow: 5px 5px 5px #444444;">Buy
					Now</a></td>
		</tr>
	</table>

	<footer>
		<jsp:include page="footer.html"></jsp:include>
	</footer>
</body>
