<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Driver</title>
<style>
body {
	background-color: #ffe90f;
	justify-content: center;
	align-content: center;
	margin-top: 7%;
}

.tms {
	position: relative;
	display: flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	flex-wrap: wrap;
	z-index: 1;
	width: 350px;
	margin-left: auto;
	margin-right: auto;
	height: 400px;
	background-color: rgba(255, 255, 255, 0.70);
	border-radius: 19px;
	box-shadow: 8px 8px 5px rgba(0, 0, 0, 0.50);
}

.tms a {
	top: 20px;
	display: flex;
	text-decoration: none;
	padding: 8px;
	background-color: red;
	border-radius: 10px;
	margin: 13px 1px 0 0;
	align-content: center;
	justify-content: center;
	width: 80%;
	height: 30px;
	position: relative;
	color: white;
	font-style: bold;
	font-size: 25px;
}

.tms a:hover {
	top: 20px;
	display: flex;
	text-decoration: none;
	padding: 8px;
	background-color: green;
	border-radius: 10px;
	margin: 13px 1px 0 0;
	align-content: center;
	justify-content: center;
	width: 80%;
	height: 30px;
	position: relative;
	color: white;
	font-style: bold;
	font-size: 25px;
	box-shadow: 8px 8px 5px rgba(0, 0, 0, 0.50);
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
	margin: 8px 25px 0 0;
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
	background-color: red;
	align-items: center;
	border-radius: 10px;
	margin: 8px 25px 0 0;
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
</style>
</head>
<body>

	<div class="tms">
		<center>
			<h2>Driver Home Page</h2>
			<a href="driver/ViewDriver.jsp">View Driver</a> <a
				href="driver/AddDriver.jsp">Add Driver</a> <a
				href="driver/UpdateDriver.jsp">Update Driver</a> <a
				href="driver/DeleteDriver.jsp">Delete Driver</a>
		</center>
	</div>
	<div class="btn">
		<a href="http://localhost:8080/tractormanagement/Home.jsp">Home</a> <a
			href="javascript:history.back()">Back</a>
	</div>
</body>
</html>