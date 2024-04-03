<body style='background:lightgrey;margin-bottom:100px;'>
<jsp:include page="user_header.jsp"></jsp:include>
<table width='100%' style='padding:15px;'>
<tr>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String cat = request.getParameter("cat");

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from products where prod_category='"+cat+"' order By prod_name" );
	int i=0;
	while(rs.next())
	{
%>
<td style='padding:15px;text-align:center;'class="products">
<img src='<%="images/"+rs.getString(1)+".jpg"%>' width=200 height=200/><br>
<p style='font-size:14pt;font-weight:bold;'><%=rs.getString(2)%> (<%=rs.getString(3)%>)</p>
<p>Rs.<%=rs.getString(4)%>/-(-<%=rs.getString(5)%>%)</p>
<a href='add_cart.jsp?pid=<%=rs.getString(1)%>' style='font-size:12pt;padding:5px;background:red;color:white;border-radius:5px;text-decoration:none;box-shadow:5px 5px 5px #444444;'>Buy Now</a>
</td>
<%
		i++;
		if(i%3==0)
		{
%>
</tr><tr>
<%
		}
	}
%>
</table>
</body>	

<jsp:include page="footer.html"></jsp:include>


