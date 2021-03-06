<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>

<style>
body {
	padding: 0;
	margin: 0;
	position: relative;
	background-image: url(img/bg03.jpg);
}

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
	margin-top: 70px;
	margin-left: auto;
	margin-right: auto;
}

.btn a {
	text-decoration: none;
	padding: 8px;
	background-color: blue;
	align-items: center;
	border-radius: 10px;
	margin: 8px 25px 10px 0;
	align-content: center;
	justify-content: center;
	width: 20%;
	height: 30px;
	display: inline-flex;
	color: white;
	font-style: bold;
	font-size: 25px;
}

.btn a:hover {
	text-decoration: none;
	padding: 8px;
	background-color: green;
	align-items: center;
	border-radius: 10px;
	margin: 8px 25px 10px 0;
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

#tms {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 70%;
	position: relative;
	top: 40px;
	bottom: 12px;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	flex-wrap: wrap;
	margin-bottom: 10px;
	margin-left: auto;
	margin-right: auto;
}

#tms td, #tms th {
	border: 1px solid #ddd;
	padding: 8px;
}

#tms tr:nth-child(even) {
	background-color: #f2f2f2;
}

#tms tr:hover {
	background-color: #ddd;
}

#tms th {
	padding-top: 12px;
	text-transform: uppercase;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
	<table border="2" id="tms">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>Number</th>
			<th>Color</th>
			<th>Wheels</th>
			<th>Model</th>
		</tr>
		<%
String id = request.getParameter("id");
//JDBC
 
try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("select * from tms where id=?");
 
 

ps.setString(1,id);

ResultSet rs=ps.executeQuery();


while(rs.next())
{
	%>

		<tr>
			<td>
				<% out.print(rs.getString(1)); %>
			</td>
			<br>
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
%>
	</table>
	<%
con.close();
}

catch(Exception e)
{
	System.out.print(e);
}

%>
	<div class="btn">
		<a href="http://localhost:8080/tractormanagement/Home.jsp">Home</a> <a
			href="javascript:history.back()">Back</a>
	</div>
</body>
</html>