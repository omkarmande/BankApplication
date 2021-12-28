<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<%
String name="";
int bal=0;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaProjects","root","12345678");
Statement stmt1 = con.createStatement();
ResultSet rs1 = stmt1.executeQuery("select * from username");
while(rs1.next())
	name=rs1.getString(1);
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from bank where name = '"+name+"'");
while(rs.next())
bal = rs.getInt(5);
con.close();
}catch(Exception e){out.print(e);}
%>
<h3>Your Account Balance is <%= bal%></h3> 

<br><br>
<a href="BankDashboard.jsp">Go to Dashboard</a>
</body>
</html>