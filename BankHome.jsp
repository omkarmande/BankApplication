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
<%
String name,branch,phno,pass;
name = request.getParameter("name");
session.setAttribute("user", name);
phno = request.getParameter("ph");
branch = request.getParameter("branch");
pass = request.getParameter("pass");
%>
<jsp:useBean id="obj" scope="request" class="pkg.UserBean">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<%
obj.setUser(name);
%>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaProjects","root","12345678");
PreparedStatement st = con.prepareStatement("insert into bank values(?, ?, ?, ?,?)");
st.setString(1,name);
st.setString(2,phno);
st.setString(3,branch);
st.setString(4,pass);
st.setInt(5,0);
st.executeUpdate();
PreparedStatement st1 = con.prepareStatement("truncate table username");
st1.executeUpdate();
PreparedStatement st2 = con.prepareStatement("insert into username values('"+name+"')");
st2.executeUpdate();
con.close();
}catch(Exception e){out.print(e);}
%>
<jsp:include page="BankDashboard.jsp"></jsp:include>
</body>
</html>