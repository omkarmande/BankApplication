<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaProjects","root","12345678");
PreparedStatement st1 = con.prepareStatement("truncate table username");
st1.executeUpdate();
}catch(Exception e){out.print(e);}
%>
<jsp:forward page="BankLogIn.jsp"></jsp:forward>
</body>
</html>