<body style='background:lightgrey;margin-bottom:100px;'>
<jsp:include page="user_header.jsp"></jsp:include>

<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String pid = request.getParameter("pid");
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from products where prod_id="+pid);
	rs.next();
%>
<div style="height:150%;">
<form method='post' action='add_cart1.jsp'>
<table width="70%" style='padding:15px;background:linen;' align='center'>
<tr>
	<td colspan=2 style='padding:15px;text-align:center;'>
		<img src='<%="images/"+rs.getString(1)+".jpg"%>' width=300 height=300/><br>
		<p style='font-size:14pt;font-weight:bold;'><%=rs.getString(2)%>(<%=rs.getString(3)%>)</p>
		<p>Rs.<%=rs.getString(4)%>/-(-<%=rs.getString(5)%>%)</p>
	</td>
</tr>
<tr>
	<td><b>Qty:</b></td><td><input type='text' name='qty' required></td>
</tr>
<tr>
	<td align='center'><input type='submit' value='ADD CART' class='btn'></td>
	<td align='center'><input type='reset' value='RESET' class='btn'></td>
</tr>
<input type='hidden' name='pid' value=<%=pid%>>
</table>
</form>
</div>
<jsp:include page="footer.html"></jsp:include>
</body>
