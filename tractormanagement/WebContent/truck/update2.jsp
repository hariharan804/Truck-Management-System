<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh"
	content="1; URL=http://localhost:8080/tractormanagement/Truck.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>up 2</title>

<style type="text/css">
body {
	min-height: 100%;
	background-image: url(tms.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

h1, h2, h3 {
	color: white;
	background-color: #C928FF;
	width: auto;
	height: 30px;
	padding: 5px;
	border-radius: 19px;
	align-content: center;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>



	<%
String num = request.getParameter("number");
String name = request.getParameter("name");
String color = request.getParameter("color");
String wheels = request.getParameter("wheels");
String year = request.getParameter("year");
String id = request.getParameter("id");

//JDBC
 try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("update tms set name=?, number=?, color=?, wheels=?, year=? where id=?");



ps.setString(1,name);
ps.setString(2,num);
ps.setString(3,color);
ps.setString(4,wheels);
ps.setString(5,year);
 
ps.setString(6,id);

ps.executeUpdate();

out.print("<center><h1>Successfully Updated!</h1></center>");
con.close();
 }

catch(Exception e)
{
	System.out.print(e);
}
%>

</body>
</html>