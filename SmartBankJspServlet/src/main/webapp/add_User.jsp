<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<style>
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
</style>

</head>
<body style="background-color: #93CAED">
	<div class="main">
		<div class="sub" style="width: 15%; padding-top: 25px;">
			<a href="add_User1.jsp"
				style="text-decoration: none; color: black; margin-left: 10px;">Back</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%;margin-top:15px;">Add User Page</h2>
		</div>
		<div style="width: 15%; justify-content: flex-end;">

			<a href="admin.jsp"> <i class="fas fa-home"
				style="font-size: 40px; float: right; margin-top: 20px; margin-right: 10px; color: black;">
			</i>
			</a>

		</div>
	</div>

	<br>
	<br>
	<br>
	<br>

	<div class="main-section">
		<div class="content-section">
			<div class="head-section">
				<h3>Add-User Form</h3>
			</div>
			<div class="body-section">
				<form action="UserServlet" method="get">
					<div class="form-input">
						<input type="text" name="CorporateId" placeholder="Corporate-Id"
							value="<%=(request.getParameter("id"))%>" readonly="readonly">
					</div>
					<div class="form-input">
						<input type="text" name="UserLoginId" id="address"
							placeholder="Login-Id" required="required">
					</div>
					<div class="form-input">
						<input type="text" name="UserPassword" id="address"
							placeholder="Password" required="required">
					</div>
					<div class="form-input">
						<input type="text" name="UserAdd" id="address"
							placeholder="Address" required="required">
					</div>
					<div class="form-input">
						<input type="text" name="UserDept" id="address"
							placeholder="Department" required="required">
					</div>
					<div class="form-input">
						<input type="tel" name="UserPhno" placeholder="Phone-No"
							required="required">
					</div>
					<div class="form-input">
						<input type="hidden" name="action" value="add" />
						<button type="submit" class="btn-submit">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>