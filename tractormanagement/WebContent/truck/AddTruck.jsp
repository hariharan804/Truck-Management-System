<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Truck</title>
<style type="text/css">
body {
	background-color: #ffe90f;
	justify-content: center;
	margin-top: 6%;
}

.tms {
	position: relative;
	display: inline-flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	max-width: 1200px;
	flex-wrap: wrap;
	z-index: 1;
	padding: 2%;
	width: 420px;
	height: 490px;
	border-radius: 29px;
	background-color: rgba(255, 255, 255, 0.50);
	top: 5px;
	box-shadow: 10px 10px 10px;
}

input[type=text], input[type=number], input[type=date], input[type=select]
	{
	width: 100%;
	padding: 15px;
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
	<center>
		<h2>Truck Add</h2>
		<form action="add.jsp">
			<div class="tms">
				<br />
				<p>
					Truck Name<input type="text" name="name"
						placeholder="Enter Truck Name" required> <br /> Truck
					Number<input type="text" name="number"
						placeholder="Enter Truck Number" required><br /> Truck
					Color<input type="text" name="color"
						placeholder="Enter Truck Color" required><br /> Truck
					Wheels<input type="number" name="wheels"
						placeholder="Enter how Many wheels" required><br /> Model
					Year<input type="text" name="year" placeholder="Enter Model Year"
						required><br /> <input type="submit" value="Submit">
				</p>
		</form>
		<br> <br>
		</div>
	</center>
	<div class="btn">
		<a href="http://localhost:8080/tractormanagement/Home.jsp">Home</a> <a
			href="javascript:history.back()">Back</a>
	</div>
</body>
</html>