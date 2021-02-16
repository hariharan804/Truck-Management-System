<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
	padding: 0;
	margin: 0;
	position: relative;
}

table {
	position: relative;
	display: flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	flex-wrap: wrap;
	z-index: 1;
	top: 20px;
	margin-left: auto;
	margin-right: auto;
	padding: 1px;
	font-size: 21px;
	font-style: bold;
	justify-content: center;
	color: white;
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
	background-color: #3F3FBF;
	justify-content: center;
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

.btn {
	position: relative;
	display: flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	flex-wrap: wrap;
	z-index: 1;
	top: 20px;
	margin-left: auto;
	margin-right: auto;
}

.btn a {
	text-decoration: none;
	padding: 8px;
	background-color: blue;
	align-items: center;
	border-radius: 10px;
	margin: 8px 25px 50px 0;
	align-content: center;
	justify-content: center;
	width: 20%;
	height: 30px;
	display: inline-flex;
	color: white;
	bottom: 20px;
	font-style: bold;
	font-size: 25px;
}

.btn a:hover {
	text-decoration: none;
	padding: 8px;
	background-color: red;
	align-items: center;
	border-radius: 10px;
	margin: 8px 25px 50px 0;
	align-content: center;
	justify-content: center;
	width: 20%;
	height: 30px;
	display: inline-flex;
	color: white;
	font-style: bold;
	font-size: 25px;
	box-shadow: 8px 8px 5px rgba(0, 0, 0, 0.50);
}

body {
	min-height: 100%;
	background-image: url(tms.jpg);
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


<title>View All</title>
</head>
<body>
	<center>
		<h1>Truck List</h1>
	</center>
	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>NUMBER</th>
			<th>EMAIL</th>
			<th>EXP</th>
			<th>DOB</th>
		</tr>
		<%
 

//JDBC
 try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("select*from tms");

//ps.setString(1,code);

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	%>
		<tr>
			<td>
				<% out.print(rs.getString(1)); %>
			</td>
			<td>
				<% out.print(rs.getString(2)); %>
			</td>
			<td>
				<% out.print(rs.getString(3)); %>
			</td>
			<td>
				<% out.print(rs.getString(4)); %>
			</td>
			<td>
				<% out.print(rs.getString(5)); %>
			</td>
			<td>
				<% out.print(rs.getString(6)); %>
			</td>
		</tr>

		<%
	 

}
}
catch(Exception e)
{
	System.out.print(e);
}
%>

	</table>
	<br>
	<br>
	<center>
		<h1>Driver List</h1>
	</center>
	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>NUMBER</th>
			<th>EMAIL</th>
			<th>EXP</th>
			<th>DOB</th>
		</tr>
		<%
 

//JDBC
 try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("select*from tmsd");

//ps.setString(1,code);

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	%>
		<tr>
			<td>
				<% out.print(rs.getString(1)); %>
			</td>
			<td>
				<% out.print(rs.getString(2)); %>
			</td>
			<td>
				<% out.print(rs.getString(3)); %>
			</td>
			<td>
				<% out.print(rs.getString(4)); %>
			</td>
			<td>
				<% out.print(rs.getString(5)); %>
			</td>
			<td>
				<% out.print(rs.getString(6)); %>
			</td>
		</tr>

		<%
	 

}
}
catch(Exception e)
{
	System.out.print(e);
}


//out.print("Code: "+rs+"<br>");
%>
	</table>
	<center>
		<div class="btn">
			<a href="http://localhost:8080/tractormanagement/Home.jsp">Home</a> <a
				href="javascript:history.back()">Back</a>
		</div>
	</center>
</body>
</html>