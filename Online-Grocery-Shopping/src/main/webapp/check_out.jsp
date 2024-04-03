<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select count(*) from order_master");
	rs.next();
	int oid = rs.getInt(1)+1;

	rs = s.executeQuery("select current_date");
	rs.next();
	String odate = rs.getString(1);

	float tot = Float.parseFloat(session.getAttribute("tot").toString());
%>
<script type='text/javascript'>
function validate()
{
	x = document.forms["order"]["cardno"];

	if(!x.value.match(/\d{4}-\d{4}-\d{4}-\d{4}/))
	{
		alert("Invalid card no");
		x.focus();
		return false;
	}

	return true;
}
</script>

<link rel='stylesheet' href="css/style.css">
<body style='background:url(images/bg.jpg);background-repeat: no-repeat;background-size:100%;'>
<header>
<jsp:include page="user_header.jsp"></jsp:include>
</header>

<article style='padding:30px;'>

<form method='post' action='checkout1.jsp' onsubmit="return validate()" name="order">
<table width='60%' height='40%' align='center' style='background:black;color:white;'>
<tr>
	<td><b>Order ID:</b></td>
	<td><input type='text' name='oid' value=<%=oid%> readOnly></td>
</tr>
<tr>
	<td><b>Order Date:</b></td>
	<td><input type='text' name='odate' value='<%=odate%>' readOnly></td>
</tr>
<tr>
	<td><b>Total Amount:</b></td>
	<td><input type='text' name='amt' value=<%=tot%> readOnly></td>
</tr>
<tr>
	<td><b>Card No:</b></td>
	<td><input type='text' name='cardno' required></td>
</tr>
<tr>
	<td><b>Bank Name:</b></td>
	<td><input type='text' name='bname' required></td>
</tr>
<tr>
	<td align='center'><input type='submit' value='Pay Now' class='btn'></td>
	<td align='center'><input type='reset' value='Clear' class='btn'></td>
</tr>
</table>
</form>

</article>

<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>

</body>
	
	

