<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>

 scroll {
 overflow:none;
 }
body {
	background-color: #ffe90f;
	justify-content: center;
	position: relative;
	display: flex;
	margin-top: 9%;
	background-size: cover;

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
	position: relative;
}

.tms {
	width: 350px;
	height: 340px;
	background-color: rgba(255, 255, 255, 0.70);
	border-radius: 19px;
	box-shadow: 8px 8px 5px rgba(0, 0, 0, 0.90);
}

.tms a {
	top: 70px;
	display: flex;
	text-decoration: none;
	padding: 8px;
	background-color: red;
	border-radius: 10px;
	margin: 13px 1px 0 0;
	align-content: center;
	justify-content: center;
	width: 30%;
	height: 30px;
	position: relative;
	color: white;
	font-style: bold;
	font-size: 25px;
}

.tms a:hover {
	top: 70px;
	text-decoration: none;
	padding: 8px;
	background-color: green;
	border-radius: 10px;
	position: relative;
	margin: 13px 0 0 0;
	align-content: center;
	display: flex;
	justify-content: center;
	width: 30%;
	color: white;
	font-style: bold;
	font-size: 25px;
	box-shadow: 8px 8px 5px rgba(0, 0, 0, 0.50);
}
</style>
</head>
<body>
	<center>
		<h2>Home Page</h2>
		<div class="tms">
			<a href="Truck.jsp">Truck</a> 
			<a href="Driver.jsp">Driver</a> 
			<a	href="schedule.jsp">Schedule</a> 
			<a href="ViewAll.jsp">Admin</a>
		</div>
	</center>
</body>
</html>