<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SmartBank|Admin Page</title>
<link rel="stylesheet" href="style.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<style type="text/css">
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
				style="font-weight: bold; width: 80%; float: right; text-align: center;">User
				Page</h2>
		</div>
		<div style="width: 15%; justify-content: flex-end;">
			<a class="logout" href="index.jsp">Logout</a>
		</div>
	</div>
	<br>
	<div class="main-section">
		<div class="content-section">
			<div class="head-section">
				<h3>Password Reset Form</h3>
			</div>
			<div class="body-section">
				<form action="UserServlet" method="get">
					<div class="form-input">
						<input type="text" name="password" id="address"
							placeholder="New Password" required="required">
					</div>
					<div class="form-input">
						<input type="password" name="newpassword" id="address1"
							placeholder="Confirm New Password" required="required">
					</div>
					<div class="form-input">
						<button type="submit" class="btn-submit" onClick="return Validate()">Submit</button>
					</div>
					<input type="hidden" value="${loginid}" name="userid">
					<input type="hidden" name="action" value="changepass"/>
				</form>
				<script type="text/javascript">
					function Validate() {
						var password = document.getElementById("address").value;
						var confirmPassword = document
								.getElementById("address1").value;
						if (password != confirmPassword) {
							alert("Passwords do not match.");
							return false;
						}
						return true;
					}
				</script>
			</div>
		</div>
	</div>
</body>
</html>