<body bgcolor='pink'>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String loginid = request.getParameter("loginid");

	String ans = request.getParameter("ans");

	ResultSet rs = con.createStatement().executeQuery("select security_ans,passwd from users where emailid='"+loginid+"'");
	rs.next();

	if(rs.getString(1).equals(ans))
	{
%>
<h3>Your password is <%=rs.getString(2)%></h3>
Click <a href='index.jsp'>here</a> to continue login.
<%
	}
	else
	{
%>
<h3>Invalid answer.</h3>
Click <a href='recover.jsp'>here</a> to try again.
<%
	}
%>
</body>	

