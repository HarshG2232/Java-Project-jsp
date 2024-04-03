<link rel='stylesheet' href="css/style.css">
<body style='background:url(images/delivery.png);background-repeat: no-repeat;background-size:100%;align-content: center;'>
<header>
	<jsp:include page="user_header.jsp"></jsp:include>
</header>

<div style='height:150%;'>
<br>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String oid = request.getParameter("oid");
	String eid = session.getAttribute("emailid").toString();
	
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select order_id, order_date, name, address, phone, order_master.emailid, total, status, card_no, bank_name from order_master,users where order_master.emailid = users.emailid and order_id="+oid+" and order_master.emailid='"+eid+"'");

	if(rs.next())
	{
%>

<table width='40%' height='40%' align='center' style='background:black;color:white;'>
<tr>
	<td><b>Order ID:</b></td>
	<td><%=rs.getString(1)%></td>
</tr>
<tr>
	<td><b>Order Date:</b></td>
	<td><%=rs.getString(2)%></td>
</tr>
<tr>
	<td><b>Customer Name:</b></td>
	<td><%=rs.getString(3)%></td>
</tr>
<tr>
	<td><b>Address:</b></td>
	<td><%=rs.getString(4)%></td>
</tr>
<tr>
	<td><b>Phone:</b></td>
	<td><%=rs.getString(5)%></td>
</tr>
<tr>
	<td><b>Email ID:</b></td>
	<td><%=rs.getString(6)%></td>
</tr>
<tr>
	<td><b>Total:</b></td>
	<td>Rs.<%=rs.getString(7)%>/-</td>
</tr>
<tr>
	<td><b>Status:</b></td>
	<td><%=rs.getString(8)%></td>
</tr>
<tr>
	<td><b>Card No:</b></td>
	<td><%=rs.getString(9)%></td>
</tr>
<tr>
	<td><b>Bank Name:</b></td>
	<td><%=rs.getString(10)%></td>
</tr>
</table><br>
<%
	rs = s.executeQuery("select order_details.prod_id, prod_name, prod_uom, prod_rate, prod_desc, qty, qty*prod_rate-qty*prod_rate*prod_desc/100 from products, order_details where products.prod_id = order_details.prod_id and order_id="+oid);
%>
<table width='100%' align='center' style='background:black;color:white;'>
<tr style='background:red;'>
	<th>Product ID</th>
	<th>Name</th>
	<th>UOM</th>
	<th>Rate</th>
	<th>Discount (%)</th>
	<th>Qty</th>
	<th>Amount</th>
</tr>
<%
	while(rs.next())
	{
%>
<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td><%=Math.round(rs.getFloat(7)*100)/100.0%></td>
</tr>
<%
	}
%>
<button onclick="window.print()">Print this page</button>
</table>
<%
}
else
{
%>
<h4>Invalid order no <%=oid%></h4>
<%
}
%>

</div>
<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>

</body>
