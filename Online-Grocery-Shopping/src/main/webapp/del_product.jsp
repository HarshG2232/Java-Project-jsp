<%@page import="java.sql.*, java.io.*"%>
<%Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/shop", "root", "root");
	String appPath = request.getServletContext().getRealPath("/");

	String pid = request.getParameter("pid");

	Statement s = con.createStatement();
	s.executeUpdate("delete from products where prod_id="+pid);

	File f = new File(appPath+"images/"+pid+".jpg");
	response.sendRedirect("add_product.jsp");
%>
