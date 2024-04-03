<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");

String pid = request.getParameter("pid");

Statement s = con.createStatement();
ResultSet rs = s.executeQuery("select * from products where prod_id=" + pid);
rs.next();
%>
<link rel='stylesheet' type='text/css' href='css/style.css'>
<form method='post' action='http://localhost:8080/Online_Grocery_Shop/UpdateProductServlet' name='add'
	enctype="multipart/form-data">
	<table align='center' width='80%'
		style='background: #FAA; padding: 10px;'>
		<tr>
			<td colspan=2 align='center' style='padding: 10px;'><a
				href='admin_home.jsp' class='menu1'>Home</a></td>
		</tr>
		<tr>
			<td><b>Product ID:</b></td>
			<td><input type='text' name='pid' value='<%=rs.getString(1)%>'
				readOnly></td>
		</tr>
		<tr>
			<td><b>Product Name:</b></td>
			<td><input type='text' name='pname' value='<%=rs.getString(2)%>'
				required></td>
		</tr>
		<tr>
			<td><b>Unit Of Measure:</b></td>
			<td><input type='text' name='uom' value='<%=rs.getString(3)%>'
				required></td>
		</tr>
		<tr>
			<td><b>Product Rate:</b></td>
			<td><input type='number' name='prate'
				value='<%=rs.getString(4)%>' min=10 max=5000 required></td>
		</tr>
		<tr>
			<td><b>Product Discount:</b></td>
			<td><input type='number' name='pdisc'
				value='<%=rs.getString(5)%>' min=0 max=71 required></td>
		</tr>
		<tr>
			<td><b>Category:</b></td>
			<td><select name='cat' required>
					<option value=''>Select Category</option>
					<option value='Soap'
						<%if (rs.getString(6).equals("Soap"))
	out.print(" selected");%>>Soap</option>
					<option value='Rice'
						<%if (rs.getString(6).equals("Rice"))
	out.print(" selected");%>>Rice</option>
					<option value='Oil'
						<%if (rs.getString(6).equals("Oil"))
	out.print(" selected");%>>Oil</option>
					<option value='Pulses'
						<%if (rs.getString(6).equals("Pulses"))
	out.print(" selected");%>>Pulses</option>
					<option value='Fruits'
						<%if (rs.getString(6).equals("Fruits"))
	out.print(" selected");%>>Fruits</option>
					<option value='Wheat'
						<%if (rs.getString(6).equals("Wheat"))
	out.print(" selected");%>>Wheat</option>
			</select></td>
		</tr>
		<tr>
			<td><b>Image File:</b></td>
			<td><input type="file" name="pimg" id="fileToUpload"></td>
		</tr>
		<tr>
			<td align='center'><input type='submit' value='UPDATE'
				class='btn'></td>
			<td align='center'><input type='reset' value='CLEAR' class='btn'></td>
		</tr>
	</table>
</form>



