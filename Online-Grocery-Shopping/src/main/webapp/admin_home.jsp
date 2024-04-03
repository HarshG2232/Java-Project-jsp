<link rel='stylesheet' type='text/css' href='css/style.css'>
<article style='padding: 20px;'>
	<table align='center' width='100%' height='50%'
		style='background: #ccc;'>
		<tr>
			<td style='padding: 20px; text-align: center; font-size: 20pt;'
				colspan=4 align='center'>
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<h3 class="animate-charcter">
								 Welcome ADMIN -
								<%=session.getAttribute("aname")%></h3>
						</div>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td style='padding: 20px; text-align: center; padding: 5px;'><a
				href='add_product.jsp' class='menu3'>Add Products</a></td>
			<td style='padding: 20px; text-align: center; padding: 5px;'><a
				href='view_all_users.jsp' class='menu3'>View Users</a></td>
			<td style='padding: 20px; text-align: center; padding: 5px;'><a
				href='view_admin_orders.jsp' class='menu3'>View Daily Orders</a></td>
			<td style='padding: 20px; text-align: center; padding: 5px;'><a
				href='logout.jsp' class='menu3'>Logout</a></td>
		</tr>
	</table>
	<body style="background-image: url('images/adminhome1.png');">

	</body>
</article>

