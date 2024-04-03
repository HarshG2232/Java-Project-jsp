<body style='background:lightgrey;margin-bottom:100px;'>
<jsp:include page="header.html"></jsp:include>
<table width='100%' style='padding:15px;'>
<tr>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shop", "root", "root");

	String cat = request.getParameter("cat");
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from products where prod_category='"+cat+"'");
	int i=0;
	while(rs.next())
	{
%>
<td style='padding:15px;text-align:center;'>
<img src='<%="images/"+rs.getString(1)+".jpg"%>' width=200 height=200/><br>
<p style='font-size:14pt;font-weight:bold;'><%=rs.getString(2)%> (<%=rs.getString(3)%>)</p>
<p>Rs.<%=rs.getString(4)%>/-(-<%=rs.getString(5)%>%)</p>
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
<jsp:include page="footer.html"></jsp:include>
</body>	




