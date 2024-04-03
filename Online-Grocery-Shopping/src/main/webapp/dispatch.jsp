<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/shop", "root", "root");

	String oid = request.getParameter("oid");

	Statement s = con.createStatement();
	s.executeUpdate("update order_master set status='Dispatch' where order_id="+oid);

	response.sendRedirect("view_admin_orders.jsp");
%>
