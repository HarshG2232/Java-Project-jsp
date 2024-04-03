<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");
%>
<link rel='stylesheet' type='text/css' href='css/style.css'>
<style>
td,th
{
	border:1px solid black;
}
</style>
<table align='center' width='100%' style='background:linen;'>
<tr>
	<td colspan=4 align='center' style='padding:10px;'><a href='admin_home.jsp' class='menu1'>&larr;Home</a></b></td>
</tr>
<tr>
	<th>Email ID</th>
	<th>Name</th>
	<th>Address</th>
	<th>Phone</th>
</tr>
<tr>
<%
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select emailid,name,address,phone from users");
	while(rs.next())
	{
%>
<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
</tr>
<%
	}
%>	
</table>
