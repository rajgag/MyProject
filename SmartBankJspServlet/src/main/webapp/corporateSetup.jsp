<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SmartBank|CorporateSetUp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
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
</style>
</head>
<body style="background-color:  #93CAED">
	<div class="main">
		<div class="sub" style="width: 15%; padding-top: 25px">
			<a href="admin.jsp"
				style="text-decoration: none; color: black; margin-left: 10px;">BACK</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%">Corporate Setup Page</h2>
		</div>
		<div style="width: 15%; justify-content: flex-end;">
			<a href="admin.jsp">
				<i class="fas fa-home"
					style="font-size: 40px; float: right; margin-top: 20px; margin-right: 10px; color:black;">
				</i>
			</a>
		</div>
	</div>
	<br>
	<br>
	<div style="height: 200px; padding: 20px; text-align: center;">
		<a href="add_Corporate.jsp"><button id="btn">
				<h4>Add Corporate</h4>
			</button></a> <a href="modify_Corporate.jsp"><button id="btn">
				<h4>Modify Corporate</h4>
			</button></a> <a href="delete_corporate.jsp"><button id="btn">
				<h4>Delete Corporate</h4>
			</button></a>
			<a href="list_Corporate.jsp"><button id="btn">
				<h4>List of Corporate</h4>
			</button></a>

	</div>
</body>
</html>