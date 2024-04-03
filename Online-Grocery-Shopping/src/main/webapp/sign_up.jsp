<script type='text/javascript'>
function validate()
{
	x = document.forms["reg"]["email"];

	if(!x.value.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/))
	{
		alert("Invalid email id.");
		x.focus();
		return false;
	}

	x = document.forms["reg"]["pass"];
	y = document.forms["reg"]["cpass"];
	
	if(x.value!=y.value)
	{
		alert("Password and confirm password do not match.");
		x.focus();
		return false;
	}

	x = document.forms["reg"]["phone"];
	if(!x.value.match(/^\d{10}$/))
	{
		alert("Invalid phone number.");
		x.focus();
		return false;
	}

	
	return true;
}
</script>

<jsp:include page="header.html"></jsp:include>
<div style="height:100%;">
<form method="post" action="sign_up1.jsp" name='reg' onsubmit='return validate()'>
<br>
<table align='center' width='80%' style='background:#FFC;border-radius:8px;box-shadow:8px 8px 8px #888888;font-size:10pt;'>
<tr>
	<td colspan=2 align='center'><h1>New User</h1></td>
</tr>
<tr>
	<td><b>Email ID:</b></td>
	<td><input type='text' name='email' required></td>
</tr>
<tr>
	<td><b>Password:</b></td>
	<td><input type='password' name='pass' required></td>
</tr>
<tr>
	<td><b>Confirm Password:</b></td>
	<td><input type='password' name='cpass' required></td>
</tr>
<tr>
	<td><b>Full Name:</b></td>
	<td><input type='text' name='name' required></td>
</tr>
<tr>
	<td><b>Address:</b></td>
	<td><textarea rows=5 cols=40 name='addr' required></textarea></td>
</tr>
<tr>
	<td><b>Phone:</b></td>
	<td><input type='text' name='phone' required></td>
</tr>
<tr>
	<td><b>Security Question:</b></td>
	<td>
	<select name='sqtn' required>
	<option value=''>Select Your Security Question</option>
	<option value='First Car'>First Car</option>
	<option value='First Bike'>First Bike</option>
	<option value='First School'>First School</option>
	<option value='Favourite Color'>Favourite Color</option>
	</select>
	</td>
</tr>
<tr>
	<td><b>Answer:</b></td>
	<td><input type='text' name='sans' required></td>
</tr>
<tr>	<td align='center'><input type='submit' value='SUBMIT' class='btn'></td>
	<td align='center'><input type='reset' value='RESET' class='btn'></td>
</tr>
</table>
</form>
</div>
<jsp:include page="footer.html"></jsp:include>
