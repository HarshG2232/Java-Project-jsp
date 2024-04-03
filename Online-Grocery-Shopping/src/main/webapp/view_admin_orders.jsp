<link rel='stylesheet' href="css/style.css">
<body
	style='background: url(images/bg.jpg); background-repeat: no-repeat; background-size: 100%;'>
	<article style='padding: 30px;'>
		<center>
			<a href='admin_home.jsp' class='menu1'>&larr;Home</a><a href="Date.jsp"><b>Order by Dates</b></a>
		</center>
		
		<%@page import="java.sql.*"%>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");
		Statement s = con.createStatement();
		ResultSet rs = s.executeQuery(
				"select order_id, order_date, name, address, phone, order_master.emailid, total, status, card_no, bank_name from order_master,users where order_master.emailid = users.emailid");

		while (rs.next()) {
		%>

		<table width='40%' height='40%' align='center'
			style='background: black; color: white;'>
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
				<td>Rs.<%=rs.getString(7)%>/-
				</td>
			</tr>
			<tr>
				<td><b>Status:</b></td>
				<td><%=rs.getString(8)%>&nbsp;&nbsp;<a
					href='dispatch.jsp?oid=<%=rs.getString(1)%>'>Dispatch</a></td>
			</tr>
			<tr>
				<td><b>Card No:</b></td>
				<td><%=rs.getString(9)%></td>
			</tr>
			<tr>
				<td><b>Bank Name:</b></td>
				<td><%=rs.getString(10)%></td>
			</tr>
		</table>
		<br>
		<%
		Statement s1 = con.createStatement();
		ResultSet rs1 = s1.executeQuery(
				"select order_details.prod_id, prod_name, prod_uom, prod_rate, prod_desc, qty, qty*prod_rate-qty*prod_rate*prod_desc/100 from products, order_details where products.prod_id = order_details.prod_id and order_id="
				+ rs.getString(1));
		%>
		<table width='100%' align='center'
			style='background: black; color: white;'>
			<tr style='background: red;'>
				<th>Product ID</th>
				<th>Name</th>
				<th>UOM</th>
				<th>Rate</th>
				<th>Discount (%)</th>
				<th>Qty</th>
				<th>Amount</th>
			</tr>
			<%
			while (rs1.next()) {
			%>
			<tr>
				<td><%=rs1.getString(1)%></td>
				<td><%=rs1.getString(2)%></td>
				<td><%=rs1.getString(3)%></td>
				<td><%=rs1.getString(4)%></td>
				<td><%=rs1.getString(5)%></td>
				<td><%=rs1.getString(6)%></td>
				<td><%=Math.round(rs1.getFloat(7) * 100) / 100.0%></td>
			</tr>
			<%
			}
			%>
		</table>
		<br>
		<%
}
%>
	</article>
</body>
