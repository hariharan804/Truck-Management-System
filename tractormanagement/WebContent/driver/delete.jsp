<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh"
	content="1; URL=http://localhost:8080/tractormanagement/Home.jsp" />
<style>
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

body {
	padding: 0;
	margin: 0;
	position: relative;
	background-image: url(img/bg03.jpg);
}

table {
	position: relative;
	padding: 12px;
	width: auto;
	height: :auto;
	margin: 30px 10px 15px 10px;
	border-radius: 23px;
	font-size: 21px;
	font-style: bold;
	justify-content: center;
	border-color: white;
	border: 6px soild white;
	color: white;
	left: 23%;
}

table th {
	border-radius: 3px;
	color: white;
	background-color: #40BE3E;
}

table td {
	padding: 15px;
	border-radius: 4px;
	margin: 30px 10px 15px 10px;
	background-color: rgba(255, 255, 255, 0.30);
	text-align: center;
}

a {
	padding: 15px;
	width: 20%;
	top: 50px;
	position: relative;
	display: inline-blcok;
	outline: none;
	margin: 130px 0 0 0;
	border-radius: 23px;
	font-size: 21px;
	font-style: bold;
	text-decoration: none;
	justify-content: center;
	border: none;
	color: white;
	background: red;
	left: 5%;
	cursor: pointer;
	box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.30);
}

a:hover {
	background-color: green;
	outline: none;
	text-decoration: none;
	width: 25%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>


	<%
String id = request.getParameter("id");


//JDBC
 try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("delete from tmsd where id=?");

//ps.setString(1,course);
ps.setString(1,id);

ps.executeUpdate();

con.close();
 }

catch(Exception e)
{
	System.out.print(e);
}
 out.print("<body> <center><br><br><h1>Sucessfully Deleted</h1> <br> <br></center></body>");

 
%>
	<center></center>
</body>
</html>