<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<article style='padding:20px;'>
	<table align='center' width='100%' height='50%' style='background:black;'>
	<tr>
		<td style='padding:20px;text-align:center;font-size:20pt;color:wheat;' colspan=4 align='center' >Welcome ADMIN - <%=session.getAttribute("aname")%></td>
	</tr>
	<tr>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='add_product.jsp' class='menu3'>Add Products</a></td>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='view_all_users.jsp' class='menu3'>View Users</a></td>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='view_admin_orders.jsp' class='menu3'>View Daily Orders</a></td>
		<td style='padding:20px;text-align:center;padding:5px;' class="navi"><a href='logout.jsp' class='menu3'>Logout</a></td>
	</tr>
	</table>
</article>
	<form action="Date1.jsp" method="post">
	<h1 style="margin-left: 10"">Get data by date</h1><input type="date" name="date" class="date" required="required"
			placeholder="YYYY-MM-DD">
		<td><input type='submit' value='submit' class='btn' ></td>

	</form>


	<span id="dateDisplay"></span>
	<footer>
		<jsp:include page="footer.html"></jsp:include>
	</footer>
</body>
</html>