<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<h1>Welcome to Dashboard</h1>

<hr>
<form action="BankProcess.jsp">
<%
String name = request.getParameter("name");
%>

<h3></>Select one of the following process:</h3>

Deposit Money <input type="radio" name="process" value="deposit" required>
<br>
Withdraw Money <input type="radio" name="process" value="withdraw" required>
<br>
Check Balance <input type="radio" name="process" value="check" required>
<br>
<br>
<input type="submit" value="GO">
</form>
<br>
<br>
<br>
<form action="BankLogOut.jsp">
<input type="submit" value="Log Out">
</form>
</body>
</html>