<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>schedule</title>
<style type="text/css">
html {
 overflow-y: visible;
 }

body {
    
	background-color: #ffe90f;
	justify-content: center;
	margin-top: 17%;
}

.tms {
	position: relative;
	display: inline-flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	min-width: 350px;
	flex-wrap: wrap;
	z-index: 1;
	padding: 5%;
	width: 30%;
	height: 30%;
	border-radius: 29px;
	background-color: rgba(255, 255, 255, 0.50);
	top: 5px;
	box-shadow: 10px 10px 10px;
}

input[type=text], input[type=time], input[type=number], input[type=date],
	input[type=select] {
	width: 95%;
	padding: 15px;
	margin: 1px 0 19px 0;
	display: inline-flex;
	border-radius: 13px;
	border: 1px solid gray;
	background: #dbffdb;
}

input[type=text]:focus, input[type=text]:focus, input[type=number]:focus,
	input[type=select]:focus {
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
	transition-duration: 2s;
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
</style>
</head>
<body>

	<%


//String drid ="";
try{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "1234" );
PreparedStatement ps = con.prepareStatement("select * from tmsd");
PreparedStatement ns = con.prepareStatement("select * from tms");
PreparedStatement nt = con.prepareStatement("select  name from tms ");

 
// nt.setString(1,drid);

ResultSet ntt=nt.executeQuery();
ResultSet rs=ps.executeQuery();
ResultSet ss=ns.executeQuery();

ArrayList al = new ArrayList();
while(rs.next())
{
for (int i=0; i<al.size(); i++){
	
 al.add(rs);
	}
}
System.out.print(al);

%>
<center>
		<h2>schedule</h2>
		<form action="sch.jsp">
			<div class="tms">
				<br />
				<p>
	Driver ID<input type="text" name="drid" placeholder="Driver ID"
		list="driveridl" required><br />
	<datalist id="driveridl"> <%
while(rs.next())
{
String drrid = rs.getString(1); 
%>
					<option value="<%=drrid %>"><%=drrid %></option>
					<%
}
%> </datalist>

Driver Name<input type="text" name="drname" list="drrlisth" required>
<datalist id="drrlisth"> <%
while(rs.next())
{
	%>
<option value="<%out.print(rs.getString(2));%>">
						<%out.print(rs.getString(2));%>
					</option>
					<%} %> </datalist>
					Truck ID <input type="text" name="trid" list="truckidl" required><br />
					<datalist id="truckidl"> <%
while(ss.next())
{
String trrid = ss.getString(1);  
%>
					<option value="<%=trrid %>"><%=trrid %></option>
					<%
}
%> </datalist>
					Truck Name<input type="text" name="trname" list="trrlist" required>

					<datalist id="trrlist"> <%
while(ss.next())
{
String trrid = ss.getString(1);  
%>
					<option value="<%=trrid %>"><%=trrid %></option>
					<%
}
%> </datalist>

					<br /> Date<input type="date" name="date" placeholder="Enter Date"
						required><br /> Time<input type="time" name="time"
						placeholder="Enter Time" required><br /> <input
						type="submit" value="Submit">
				</p>
		</form>
		<br> <br>
		</div>
	</center>

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