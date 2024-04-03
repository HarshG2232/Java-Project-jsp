<link rel='stylesheet' type='text/css' href='css/style.css'>
<form method='post' action='http://localhost:8080/Online_Grocery_Shop/AddProductServlet' name='add' enctype="multipart/form-data">
<table align='center' width='80%' style='background:#FAA;padding:10px;'>
<tr>
	<td colspan=2 align='center' style='padding:10px;'><a href='admin_home.jsp' class='menu1'>&larr;Home</a></td>
</tr>
<tr>
	<td><b>Product Name:</b></td>
	<td><input type='text' name='pname' required></td>
</tr>
<tr>
	<td><b>Unit Of Measure:</b></td>
	<td><input type='text' name='uom' required></td>
</tr>
<tr>
	<td><b>Product Rate:</b></td>
	<td><input type='number' name='prate' min=10 max=5000 required></td>
</tr>
<tr>
	<td><b>Product Discount:</b></td>
	<td><input type='number' name='pdisc' min=0 max=71 required></td>
</tr>
<tr>
	<td><b>Category:</b></td>
	<td>
	<select name='cat' required>
	<option value=''>Select Category</option>
	<option value='Soap'>Soap</option>
	<option value='Rice'>Rice</option>
	<option value='Oil'>Oil</option>
	<option value='Pulses'>Pulses</option>
	<option value='Fruits'>Fruits</option>
	<option value='Wheat'>Wheat</option>
	</select>
	</td>	
</tr>
<tr>
	<td><b>Image File:</b></td>
	<td><input type="file" name="pimg" id="fileToUpload"></td>
</tr>
<tr>
	<td align='center'><input type='submit' value='ADD' class='btn'></td>
	<td align='center'><input type='reset' value='CLEAR' class='btn'></td>
</tr>
</table><br>
</form>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from products order by prod_id");
%>
<table align='center'>
<tr bgcolor='red'>
	<th>Product ID</th>
	<th>Name</th>
	<th>UOM</th>
	<th>Rate</th>	
	<th>Discount</th>	
	<th>Category</th>	
	<th></th>
	<th></th>
	<th></th>
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

			<td><img src='images/<%=rs.getString(1)%>.jpg' width='100px' height='100px'/></td>
			<td><a href='del_product.jsp?pid=<%=rs.getString(1)%>' style="text-decoration:none;background:black;color:white;padding:5px;border-radius:5px;box-shadow:5px 5px 5px grey;">Delete</a></td>
			<td><a href='update_product.jsp?pid=<%=rs.getString(1)%>' style="text-decoration:none;background:black;color:white;padding:5px;border-radius:5px;box-shadow:5px 5px 5px grey;">Update</a></td>
		</tr>
<%
	}
%>
</table>



