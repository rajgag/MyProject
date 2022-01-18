<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="style.css">

<title>SmartBank|LoginPage</title>
</head>
<body>
<div style="text-align: center;">
<img src="images/logo.jpg"  style="width:90px; height: 90px; margin-top: 50px;">
</div>
<div class="main-section">
	<div class="content-section">
		<div class="head-section">
			<h3>User Login</h3>
		</div>
		<div class="body-section">
			<form action="UserLogin.jsp" method="post" >
				<div class="form-input">
					<input type="text" name="user_name" placeholder="Username">
				</div>
				<div class="form-input">
					<input type="password" name="password" placeholder="Password">
				</div>
				<div class="form-input">
					<button type="submit" class="btn-submit">Login</button>
				</div>
				<a href="index.jsp" style="float:right">Admin Login Page</a>
			</form>
		</div>
	</div>
</div>
</body>
</html>

