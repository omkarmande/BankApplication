<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<jsp:useBean id="obj" scope="request" class="pkg.UserBean">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<%
String name = request.getParameter("name");
int amount = Integer.parseInt(request.getParameter("amt"));
int bal=0;
//String name=obj.getUser();
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
if(bal>=amount){
bal = bal - amount;
PreparedStatement st = con.prepareStatement("update bank set Balance = ? where name = '"+name+"'");
st.setInt(1,bal);
st.executeUpdate();%>
<h3>Transaction Successful</h3>
New Balance is <%= bal%>
<%}
else{%><h3>Insufficient Balance</h3><%}
}catch(Exception e){out.print(e);
}
%>
<br><br>
<a href="BankDashboard.jsp">Go to Dashboard</a>
</body>
</html>