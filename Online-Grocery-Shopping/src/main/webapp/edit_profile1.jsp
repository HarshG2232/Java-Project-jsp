<jsp:include page="user_home.jsp"></jsp:include>
<%@page import="java.sql.*"%>
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
	s.executeUpdate("update users set passwd='"+pass+"', name='"+name+"', address='"+addr+"', phone='"+phone+"', security_q='"+sqtn+"', security_ans='"+sans+"' where emailid='"+email+"'");
	
%>
<div style='text-align:center;padding:30px;position:fixed;left:150px;top:150px;'><h1>Profile updated successfully.</h1></div>
<jsp:include page="footer.html"></jsp:include>

