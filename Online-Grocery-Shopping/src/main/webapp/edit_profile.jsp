<script type='text/javascript'>
function validate()
{
	x = document.forms["reg"]["email"];

	if(!x.value.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/))
	{
		alert("Invalid email id.");
		x.focus();
		return false;
	}

	x = document.forms["reg"]["pass"];
	y = document.forms["reg"]["cpass"];
	
	if(x.value!=y.value)
	{
		alert("Password and confirm password do not match.");
		x.focus();
		return false;
	}

	x = document.forms["reg"]["phone"];
	if(!x.value.match(/^\d{10}$/))
	{
		alert("Invalid phone number.");
		x.focus();
		return false;
	}

	
	return true;
}
</script>
<jsp:include page="user_home.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");
	String emailid = session.getAttribute("emailid").toString();
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from users where emailid='"+emailid+"'");
	rs.next();
%>
<div style="height:100%;">
<form method="post" action="edit_profile1.jsp" name='reg' onsubmit='return validate()'>
<br>
<table align='center' width='50%' style='background:#FF80CA;border-radius:8px;box-shadow:8px 8px 8px #888888;font-size:10pt;'>
<tr>
	<td colspan=2 align='center'><b>User Details<b></td>
</tr>
<tr>
	<td><b>Email ID:</b></td>
	<td><input type='text' name='email' value='<%=rs.getString(1)%>' readOnly></td>
</tr>
<tr>
	<td><b>Password:</b></td>
	<td><input type='password' name='pass' value='<%=rs.getString(2)%>' required></td>
</tr>
<tr>
	<td><b>Full Name:</b></td>
	<td><input type='text' name='name' value='<%=rs.getString(3)%>' required></td>
</tr>
<tr>
	<td><b>Address:</b></td>
	<td><textarea rows=5 cols=40 name='addr' required><%=rs.getString(4)%></textarea></td>
</tr>
<tr>
	<td><b>Phone:</b></td>
	<td><input type='text' name='phone' value='<%=rs.getString(5)%>' required></td>
</tr>
<tr>
	<td><b>Security Question:</b></td>
	<td>
	<select name='sqtn' required>
	<option value=''>Select Your Security Question</option>
	<option value='First Car' <% if(rs.getString(6).equals("First Car")) out.print(" selected");%>>First Car</option>
	<option value='First Bike' <% if(rs.getString(6).equals("First Bike")) out.print(" selected");%>>First Bike</option>
	<option value='First School' <% if(rs.getString(6).equals("First School")) out.print(" selected");%>>First School</option>
	<option value='Favourite Color' <% if(rs.getString(6).equals("Favourite Color")) out.print(" selected");%>>Favourite Color</option>
	</select>
	</td>
</tr>
<tr>
	<td><b>Answer:</b></td>
	<td><input type='text' name='sans' value='<%=rs.getString(7)%>' required></td>
</tr>

<tr>	<td align='center'><input type='submit' value='EDIT' class='btn'></td>
	<td align='center'><input type='reset' value='RESET' class='btn'></td>
</tr>
</table>
</form>
</div>
<jsp:include page="footer.html"></jsp:include>
