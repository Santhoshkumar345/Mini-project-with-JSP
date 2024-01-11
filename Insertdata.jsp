<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String yname= request.getParameter("n1");
String age= request.getParameter("a1");
String phno= request.getParameter("p1");
String uname= request.getParameter("u1");
String pwd= request.getParameter("pw1");
String rpwd= request.getParameter("rp1");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Application","root","1234");
	PreparedStatement ps= con.prepareStatement("insert into `User_details`(Name,Age,Fathername,Username,Password)VALUES(?,?,?,?,?)");
    ps.setString(1, yname);
	ps.setString(2, age);
	ps.setString(3, phno);
	ps.setString(4, uname);
	ps.setString(5, pwd);
  out.println("<br>");
	out.println("data inserted into database");
	ps.executeUpdate();
	

	con.close();
	}
catch (Exception e) {
	out.print(e);}


%>
</body>
</html>
