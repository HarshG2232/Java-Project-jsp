<%@page import="java.sql.*"%>
<jsp:include page="header.html"></jsp:include>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String sqtn = request.getParameter("sqtn");
	String sans = request.getParameter("sans");

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from users where emailid='"+email+"'");
	if(rs.next())
	{
%>
You are already a registered user.<br>
<%
	}
	else
	{
		s.executeUpdate("insert into users values('"+email+"', '"+pass+"', '"+name+"', '"+addr+"', '"+phone+"', '"+sqtn+"', '"+sans+"')");
%>
You are registered successfully.<br>
<%
	}
%>
Click <a href='sign_in.jsp'>here</a> to login.
<jsp:include page="footer.html"></jsp:include>
