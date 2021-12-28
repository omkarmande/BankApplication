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
<h2>Log In</h2>
<form action="BankValidate.jsp">
Enter your Name: <input type="text" name="name1" required>
<br>
Enter your password: <input type="password" name="pass1" required>
<br>
<br>
<input type="submit" value="Log In">
</form>
<br>
Don't have an account? <a href="BankSignUp.jsp">Sign Up</a> 
</body>
</html>