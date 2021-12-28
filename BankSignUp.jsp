<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<h1>Bank of Dementorr</h1>
<br>
<form action="BankHome.jsp">
<h2>Create New Account</h2>
Enter your Name: <input type="text" name="name" required>
<br>
Enter your Phone Number: <input type="text" name="ph" required>
<br>
Select Branch: <select name="branch" required>
<option value="thane">Thane</option>
<option value="panvel">Panvel</option>
<option value="kalyan">Kalyan</option>
<option value="bandra">Bandra</option>
</select>
<br>
Enter your password: <input type="password" name="pass" required>
<br>
<br>
<input type="submit" value="Sign In">
</form>
<br>
Already have an account? <a href="BankLogIn.jsp">Log In</a> 
</body>
</html>