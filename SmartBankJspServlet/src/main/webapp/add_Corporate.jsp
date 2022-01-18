<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin|AddCorporate</title>
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
			<a href="corporateSetup.jsp"
				style="text-decoration: none; color: black; margin-left: 10px;">Back</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%;margin-top:15px;">Add Corporate Page</h2>
		</div>
		<div style="width: 15%; justify-content: flex-end;">

			<a href="admin.jsp"> <i class="fas fa-home"
				style="font-size: 40px; float: right; margin-top: 20px; margin-right: 10px; color: black;">
			</i>
			</a>

		</div>
	</div>
	<br>
	<div class="main-section">
		<div class="content-section">
			<div class="head-section">
				<h3>Add Corporate Form</h3>
			</div>
			<div class="body-section">
				<form action="ControllerServlet" method="get">
					<div class="form-input">
						<input type="text" name="CorporateName"
							placeholder="CorporateName" required="required">
					</div>
					<div class="form-input">
						<input type="text" name="CorporateAdd" id="address" placeholder="Address"
							 required="required">
					</div>
					<div class="form-input">
						<input type="tel" name="CorporatePhno" placeholder="Phone-No"
							required="required">
					</div>
					<div class="form-input">
						<button type="submit" class="btn-submit">Submit</button>
					</div>
					<input type="hidden" name="action" value="add" />
				</form>
			</div>
		</div>
	</div>

</body>
</html>