<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>

<script type="text/javascript">
	function validate(){
		var name=document.fr1.fname.value;
		
		if(name.length==0){
			alert("Please, enter your first name.");
			document.fr1.fname.focus();
			return false;
		}
		
		var mail=document.fr1.email.value;
		var atpos=mail.indexOf("@");
		var dotpos=mail.lastIndexOf(".");
		if(atpos < 1 || dotpos<atpos+2 || dotpos + 2 >= mail.length && mail.length==0){
			alert("Not a valid email address");
			document.fr1.email.focus();
			return false;		
		}
		
		var agree=document.fr1.lic[0].checked;
		
		if(document.fr1.lic[0].checked==false){
			alert("We can't process your registration. Accept Licsence agreement first.");
			return false;
		}

	}
</script>


</head>
<body>
	<%@include file="header.html" %><br/>
	<h1 style="color: blue;" align="center">User Registration Form!</h1>
	<form action="registerU.jsp" method="post" name="fr1" onsubmit="return validate();">
		<table align="center"  bgcolor="pink" cellpadding="8" cellspacing="8">
			<tr>
				<td>First Name<font color="red"><sup>*</sup></font></td>
				<td><input type="text" name="fname"></td>
				<td>Last Name</td>
				<td><input type="text" name="lname"></td>
			</tr>
			<tr>
				<td>Email Address<font color="red"><sup>*</sup></font></td>
				<td><input type="text" name="email"></td>
				<td>Mobile Number</td>
				<td><input type="text" name="mob"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="upass"></td>
				<td>Confirm Password</td>
				<td><input type="password" name="cpass"></td>
			</tr>
			<tr>
				<td>
					Date of Birth
				</td>
				<td><input type="text" name="dob"></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td>
					<input type="radio" name="gen" value="Male">Male<br/>
					<input type="radio" name="gen" value="Female">Female<br/>
					<input type="radio" name="gen" value="Others">Others<br/>
				</td>
				<td>Address</td>
				<td><textarea rows="5" cols="25" name="addr"></textarea></td>
			</tr>
			<tr>
				<td>License Aggreement</td>
				<td>
					<input type="checkbox"  name="lic" value="OK">I agree with all privacy terms and condition mentioned in this site.
					<input type="hidden" name="lic" value="OK">
					
					
				</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Sign up"></td>
				<td><input type="reset" value="Reset"></td>
				<td></td>
			</tr>
		</table>
	</form>
	<br/>
	<br/>
	<%@include file="footer.html" %>
</body>
</html>