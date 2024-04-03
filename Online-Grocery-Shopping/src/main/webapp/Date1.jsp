<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<body style='background: lightgrey; margin-bottom: 100px;'>
	
<article style='padding:20px;'>
	<table align='center' width='100%' height='50%' style='background:black;'>
	<tr>
		<td style='padding:20px;text-align:center;font-size:20pt;color:wheat;' colspan=4 align='center' >Welcome ADMIN - <%=session.getAttribute("aname")%></td>
	</tr>
	<tr>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='add_product.jsp' class='menu3'>Add Products</a></td>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='view_all_users.jsp' class='menu3'>View Users</a></td>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='view_admin_orders.jsp' class='menu3'>View Daily Orders</a></td>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='logout.jsp' class='menu3'>Logout</a></td>
	</tr>
	</table>
</article>
	<table width='100%' style='padding: 15px;'>
		<tr>
			<%
			// On server-side (your_submit_url.jsp)
			String userDateStr = request.getParameter("date");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = sdf.parse(userDateStr);
			out.println("You entered: " + userDateStr);
			String cat = request.getParameter("date");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("select * from order_master where order_date='" + userDateStr + "'");
			if (rs.next()) {
			%>
			<span id="dateDisplay"></span>
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
				<td><b>Order Date:</b></td>
				<td><%=rs.getString(2)%></td>
				</tr>
				<tr>
					<td><b>total:</b></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<tr>
					<td><b>status:</b></td>
					<td><%=rs.getString(4)%></td>
				</tr>
				<tr>
					<td><b>card no:</b></td>
					<td><%=rs.getString(5)%></td>
				</tr>
				<tr>
					<td><b>bank name:</b></td>
					<td><%=rs.getString(6)%></td>
				</tr>
				<tr>
					<td><b>email-id:</b></td>
					<td><%=rs.getString(7)%></td>
				</tr>
			</table>
			<%
			} else {
			%>
			<h4 style="color:red">No order on This Date</h4>
			<%
			}
			%>
			<footer>
				<jsp:include page="footer.html"></jsp:include>
			</footer>
</body>
