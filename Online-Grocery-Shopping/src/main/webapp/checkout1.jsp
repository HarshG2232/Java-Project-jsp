<%@page import="java.sql.*,java.util.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String oid = request.getParameter("oid");
	String odate = request.getParameter("odate");
	String amt = request.getParameter("amt");
	String mode = request.getParameter("mode");
	String cardno = request.getParameter("cardno");
	String bname = request.getParameter("bname");

	String eid = session.getAttribute("emailid").toString();

	Statement s = con.createStatement();

	s.executeUpdate("insert into order_master values("+oid+",'"+odate+"',"+amt+",'Pending','"+cardno+"','"+bname+"','"+eid+"')");
	
	Vector prodlist = (Vector)session.getAttribute("prodlist");

	for(int i=0;i<prodlist.size();i++)
	{
		Vector rec = (Vector)prodlist.get(i);
		int pid = Integer.parseInt(rec.get(0).toString());
		int qty = Integer.parseInt(rec.get(1).toString());

		s.executeUpdate("insert into order_details values("+pid+","+oid+","+qty+")");
	}
%>

<body style='background:url(images/bg.jpg);background-repeat: no-repeat;background-size:100%;'>
<header>
	<jsp:include page="user_header.jsp"></jsp:include>
</header>

<article style='padding:30px;background:black;color:white;font-size:15pt;'>

<h3>Your order is placed successfully.</h3>
<h4>Order No: <%=oid%></h4>
<h4>Your order will be delivered in next 24 Hours.</h4>

<%
	session.removeAttribute("prodlist");
	session.removeAttribute("tot");
%>

</article>
<footer>
	<jsp:include page="footer.html"></jsp:include>
</footer>

</body>
	
	

