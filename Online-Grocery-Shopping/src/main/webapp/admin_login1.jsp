<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String aid = request.getParameter("aid");
	String apass = request.getParameter("apass");

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from admin where admin_id = '"+aid+"' and admin_pwd = '"+apass+"'");

	if(rs.next())
	{
		session.setAttribute("aid",rs.getString(1));
		session.setAttribute("aname",rs.getString(3));
	
		response.sendRedirect("admin_home.jsp");
	}
	else
	{
		response.sendRedirect("err.jsp");
	}
%>

