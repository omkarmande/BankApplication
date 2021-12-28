<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=1;
String n = request.getParameter("name1");
String p = request.getParameter("pass1");
String nv,pv;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaProjects","root","12345678");

Statement stmt1 = con.createStatement();
ResultSet rs1 = stmt1.executeQuery("select * from bank");
while(rs1.next()){
	nv=rs1.getString(1);
	pv=rs1.getString(4);
	if(nv.equals(n) && pv.equals(p)){
	PreparedStatement st1 = con.prepareStatement("truncate table username");
	st1.executeUpdate();
	PreparedStatement st2 = con.prepareStatement("insert into username values('"+n+"')");
	st2.executeUpdate();
	%>
	<jsp:forward page="BankDashboard.jsp"></jsp:forward>
	<%
	}
	else{
		
		
		while(i==1){ %>
		<h4>Incorrect Username & Password</h4>
		<jsp:include page="BankLogIn.jsp"></jsp:include>
		<%
		i++;}
	}
}
}catch(Exception e){out.print(e);}
%>
</body>
</html>