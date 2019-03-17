<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Table Row Insert From</title>
<script language = "JavaScript">

	function ln_Check(){
		if(document.custom.p_id.value==""){
			alert("Please insert your id!!");
			return;
		}
		if(document.custom.p_pw.value==""){
			alert("Please insert your password!!");
			return;
		}
		if(document.custom.c_name.value==""){
			alert("Please insert your name!!");
			return;
		}
		if(document.custom.c_email.value==""){
			alert("Please insert your email!!");
			return;
		}	
		if(document.custom.c_tel.value==""){
			alert("Please insert your phone number!!");
			return;
		}	
		document.custom.action = 'input.jsp';
		document.custom.submit();      
	}
	
	function ln_select(){
		document.custom.action = 'select.jsp';
		document.custom.submit();      
	}
</script>
</head>
<body>
	<center><h3>Membership Registration</h3>
	<!-- <form method="post" action="input.jsp" name="custom"> -->
	<form method="post" name="custom">
	<table border="1" cellspacing="1">
	<tr>
		<td>ID : </td>
		<td><input type="text" name="p_id"></td>
	</tr>
	<tr>
		<td>Password : </td>
		<td><input type="text" name="p_pw"></td>		
	</tr>
	<tr>
		<td>Customer Name : </td>
		<td><input type="text" name="c_name"></td>
	</tr>
	<tr>
		<td>email : </td>
		<td><input type="text" name="c_email"></td>
	</tr>
		<tr>
		<td>phone number : </td>
		<td><input type="text" name="c_tel"></td>
	</tr>
	
	<tr>
		<td colspan=2>
		<input type="button" name="confirm" value="Register" OnClick = "ln_Check()">
		<input type="button" name="select" value="search" OnClick = "ln_select()">
		<input type="reset" name="reset" value="cancel">
		</td>
	</tr>
		
	</table>
	</form>
	</center>
</body>
</html>