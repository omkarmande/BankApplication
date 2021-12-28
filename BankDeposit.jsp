<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<form action="BankDepositUpdate.jsp">
<%String name = (String)session.getAttribute("user"); %>

Enter Amount to Deposit <br><input type="number" name="amt" min="1" max="10000" required>
<br>
<input type="submit" value="Deposit">
</form>
</body>
</html>