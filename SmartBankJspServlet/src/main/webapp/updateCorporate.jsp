<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/smartbank" user="root"
		password="12345" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from corporate where CorporateName=?;
            <sql:param value="${param.CorporateName}" />
	</sql:query>


	<div class="main">
		<div class="sub" style="width: 15%; padding-top: 25px">
			<a href="corporateSetup.jsp"
				style="text-decoration: none; color: black; margin-left: 10px; float: left;">Back</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%; margin-top: 15px;">Update
				Corporate Page</h2>
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
	<c:forEach var="row" items="${result.rows}">
		<div class="main-section">
			<div class="content-section">
				<div class="head-section">
					<h3>Update Corporate Form</h3>
				</div>
				<div class="body-section">
					<form action="ControllerServlet" method="get">

						<div class="form-input">
							<input type="text" name="CorporateName" id="name"
								value="${row.CorporateName}" readonly="readonly">
						</div>
						<div class="form-input">
							<input type="text" name="CorporateAdd" id="address"
								value="${row.CorporateAdd}">
						</div>
						<div class="form-input">
							<input type="tel" name="CorporatePhno" placeholder="Phone-No"
								value="${row.CorporatePhno}">
						</div>
						<div class="form-input">
							<input type="hidden" value="update" name="action" />
							<button type="submit" class="btn-submit">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>