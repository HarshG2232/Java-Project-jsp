<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String email = request.getParameter("email");
	String pass = request.getParameter("pass");

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from users where emailid='"+email+"' and passwd='"+pass+"'");

	if(rs.next())
	{
		session.setAttribute("emailid", rs.getString(1));
		session.setAttribute("uid", rs.getString(3));
		response.sendRedirect("user_home.jsp");
	}
	else
	{
%>
<jsp:include page="header.html"></jsp:include>
<br>
Login failed.<br>
Click <a href='sign_in.jsp'>here</a> to login again.
<jsp:include page="footer.html"></jsp:include>
<%
	}
%>
