<%@page import="java.util.*"%>
<%
	Vector v = (Vector)session.getAttribute("prodlist");
	if(v==null)
	{
		response.sendRedirect("user_home.jsp");
		return;
	}
%>
<body style='background:lightgrey;'>
<jsp:include page="user_header.jsp"></jsp:include>
<style>
td,th
{
padding:10px;
}
</style>
<br><br>
<div style="height:100%;">
<table border=1 style='background:linen;' align='center'>
<tr style='background:red;'>
<th>Sr.No.</th>
<th>Product Name</th>
<th>UOM</th>
<th>Rate</th>
<th>Discount(%)</th>
<th>Qty</th>
<th>Amount</th>
</tr>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	Statement s = con.createStatement();

	int i=1;
	float tot=0;
	for(int j=0;j<v.size();j++)
	{
		Vector rec = (Vector)v.get(j);
		int pid = Integer.parseInt(rec.get(0).toString());
		int qty = Integer.parseInt(rec.get(1).toString());

		ResultSet rs = s.executeQuery("select * from products where prod_id="+pid);
		rs.next();
		float amt = rs.getFloat(4)*qty;
		amt = amt - amt*rs.getFloat(5)/100;
		tot+=amt;
%>
<td><%=i%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rec.get(1)%></td>
<td><%=amt%></td>
</tr>
<%
		i++;
	}
%>
<tr>
	<td colspan=6 align='right'><b>Total:</b></td>
	<td>Rs.<%=tot%>/-</td>
</tr>
</table><br>
<table width='70%' align='center'>
<tr>
	<td><a href='disp_cat.jsp' class='menu3'>Continue Shopping</a></td>
	<td><a href='check_out.jsp' class='menu3'>Checkout</a></td>
</tr>
</table>
<%
	session.setAttribute("tot",tot);
%>
</div>
<jsp:include page="footer.html"></jsp:include>
</body>

