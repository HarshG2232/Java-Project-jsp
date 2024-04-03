<link rel='stylesheet' href="css/style.css">
<body bgcolor='cyan'>
<header>
	<jsp:include page="header.html"></jsp:include>
</header>
<article style='padding:30px;'>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String loginid = request.getParameter("loginid");

	ResultSet rs = con.createStatement().executeQuery("select security_q from users where emailid='"+loginid+"'");

	if(rs.next())
	{
%>
<form method='post' action='recover2.jsp'>
<table width='450' height=200 align='center' style='border-style:solid;border-width:2px;border-radius:8px;box-shadow:8px 8px 8px #888888;background-color:yellow;'>
<tr>
	<td><b><%=rs.getString(1)%></b></td>
	<td><input type='text' name='ans' required></td>
</tr>
<tr>	
	<td align='center'><input type='submit' value='SUBMIT' class='btn'></td>
	<td align='center'><input type='reset' value='RESET' class='btn'></td>
</tr>
</table>
<input type='hidden' name='loginid' value='<%=loginid%>'>
</form>
<%
	}
	else
	{
%>
<h3>Invalid login id.</h3>
Click <a href='recover.jsp'>here</a> to try again.
<%
	}
%>
</article>
<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>
</body>

