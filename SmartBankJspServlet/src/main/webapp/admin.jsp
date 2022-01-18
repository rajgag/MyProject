<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SmartBank|Admin Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<style type="text/css">
#btn {
	width: 180px;
	height: 100px;
	margin: 10px;
	border-radius: 10px;
	box-shadow: 0 3px 10px rgb(0 0 0/ 0.2);
}

#btn:hover {
	background-color: #1B6DC1;
	color: white;
}

.main {
	background-color: #1B6DC1;
	display: flex;
	border-radius: 10px;
}

.sub {
	flex: auto;
	justify-content: flex-start;
	font-size: 20px;
	font-weight: bold;
}

.logout {
	font-size: 20px;
	float: right;
	margin-top: 20px;
	margin-right: 10px;
	text-decoration: none;
	color: white;
}
</style>
</head>
<body style="background-color: #93CAED">

	<div class="main">
		<div class="sub">
			<h2
				style="font-weight: bold; width: 80%; float: right; text-align: center;">Admin
				Page</h2>
		</div>
		<div style="width: 15%; justify-content: flex-end;">
			<a class="logout" href="index.jsp">Logout</a>
		</div>
	</div>

	<br>
	<br>

	<div style="height: 200px; padding: 20px; text-align: center;">
		<a href="corporateSetup.jsp"><button id="btn">
				<h4>Corporate Setup</h4>
			</button></a> <a href="userSetup.jsp"><button id="btn">
				<h4>User Setup</h4>
			</button></a> <a href="accountSetup.jsp"><button id="btn">
				<h4>Account Setup</h4>
			</button></a>

	</div>
</body>
</html>