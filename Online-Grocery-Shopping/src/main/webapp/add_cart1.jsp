<body style='background:lightgrey;'>
<jsp:include page="user_header.jsp"></jsp:include>
<%@page import="java.util.*"%>
<%
	String pid = request.getParameter("pid");
	String qty = request.getParameter("qty");

	Vector rec = new Vector();
	rec.add(pid);
	rec.add(qty);

	Vector prodlist = (Vector)session.getAttribute("prodlist");

	if(prodlist==null)
		prodlist = new Vector();

	prodlist.add(rec);

	session.setAttribute("prodlist", prodlist);
%>
<h3>Product added to cart successfully.</h3>
<table width='100%'>
<tr>
	<td><a href='view_cart.jsp' class='menu3'>View Cart</a></td>
	<td><a href='disp_cat.jsp' class='menu3'>Continue Shopping</a></td>
	<td><a href='check_out.jsp' class='menu3'>Checkout</a></td>
</tr>
</table>
<jsp:include page="footer.html"></jsp:include>
</body>
