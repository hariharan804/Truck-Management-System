<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<style>
.btn {
	position: relative;
	display: flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	flex-wrap: wrap;
	z-index: 1;
	top: 30px;
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

p {
	font-style: bold;
	font-size: 20px;
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

<style type="text/css">
body {
	background-color: #ffe90f;
	justify-content: center;
	position: relative;
	display: block;
	margin-top: 4%;
}

.tms1 {
	display: block;
	position: relative;
	padding: 6%;
	width: 220px;
	height: 480px;
	border-radius: 29px;
	background-color: rgba(255, 255, 255, 0.50);
	top: 1px;
	box-shadow: 10px 10px 10px;
}

input[type=text], input[type=number], input[type=date], input[type=select]
	{
	width: 100%;
	padding: 10px;
	margin: 1px 0 19px 0;
	display: inline-flex;
	border-radius: 13px;
	border: 1px solid gray;
	background: #dbffdb;
}

input[type=text]:focus, input[type=number]:focus, input[type=select]:focus
	{
	background-color: white;
	outline: none;
}

input[type=submit] {
	position: relative;
	padding: 5%;
	width: 50%;
	outline: none;
	margin: 0px 0 1px 0;
	border-radius: 23px;
	font-size: 21px;
	font-style: bold;
	justify-content: center;
	border: none;
	color: white;
	background: red;
	left: 1%;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: rgba(0, 255, 17, 10.1);
	transform: translateZ(50px);
	outline: none;
	transition-duration: 1s;
}

input[type=submit]:focus {
	background-color: green;
	outline: none;
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Work</title>
</head>
<body>





	<table border="2" id="tms">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>num</th>
			<th>Email</th>
			<th>Exp</th>
			<th>DOB</th>
		</tr>


		<%
String id = request.getParameter("id");
//JDBC
 
try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("select * from tmsd where id=?");
 
 

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


		<center>
			<h2>Driver Update</h2>
			<form action="update2.jsp">
				<div class="tms1">

					Driver Name<input type="text" name="id"
						value="<% out.print(rs.getString(1)); %>"
						placeholder="Enter Driver id" required> <br /> Driver Name<input
						type="text" name="name" value="<% out.print(rs.getString(2)); %>"
						placeholder="Enter Driver Name" required> <br /> Driver
					Number<input type="text" name="number"
						value="<% out.print(rs.getString(3)); %>"
						placeholder="Enter Driver Number" required><br /> Driver
					Email<input type="text" name="color"
						value="<% out.print(rs.getString(4)); %>"
						placeholder="Enter Driver Color" required><br /> Driver
					exp<input type="number" name="wheels"
						value="<% out.print(rs.getString(5)); %>"
						placeholder="Enter how Many wheels" required><br /> Dob<input
						type="text" name="year" value="<% out.print(rs.getString(6)); %>"
						placeholder="Enter Model Year" required><br /> <input
						type="submit" value="Submit">
			</form>
			<br> <br>
			</div>
		</center>

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