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
<%String no=request.getParameter("ag"); %>
<%
  String j;
 String h;
 int count=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Application","root","1234");
	PreparedStatement ps= con.prepareStatement("select * from `User_details`");
	ResultSet rs=ps.executeQuery ();
	while(rs.next()) {
		
		j=rs.getString(2);
		if(j.equals(no)){
		
			out.print(rs.getString(1));
			count=1;
			break;
			
		}}
		if(count==1){
			out.print("<br>");
			out.print("Age match");
		}
		else{
			out.print("not match");
		}
		
	
}catch(Exception e){out.print(e);}
		
    
    %>




</body>
</html>
