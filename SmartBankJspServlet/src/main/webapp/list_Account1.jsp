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

.column {
	background-color: #93CAED;
	width: 25%;
	color: black;
	text-align: center;
	margin-top: 10px;
	justify-content: center;
	margin-left: auto;
	margin-right: auto
}

#btn {
	width: 100%;
	color: black;
	text-align: center;
	margin-top: 10px;
}
#deactivate:hover
{
background-color: red;
color:black;
}
</style>
</head>

<body style="background-color: #93CAED">
	<div class="main">
		<div class="sub" style="width: 15%; padding-top: 25px;">
			<a href="close_Account.jsp"
				style="text-decoration: none; color: black; margin-left: 10px;">Back</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%;margin-top:15px;">Close Account Page</h2>
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
	<h2 style="text-align: center;">Select which account to close</h2>

	<br>
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/smartbank" user="root"
		password="12345" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from accounts where AccountStatus="Yes" and CorporateId=<%=request.getParameter("id")%>;
      </sql:query>
	<c:forEach var="row" items="${result.rows}">

		<div class="column">
			<a href=""><Button id="btn">
					<h2>
						<c:out value="${row.AccountName}" />
					</h2>
				</Button></a>
				</div>
				<div style="margin: auto; text-align: center;margin-top: 15px;width: 40%;">
				<form action="AccountServlet" method="get">
				<input type="submit" value="Close" id="deactivate" name="action">
				<input type="hidden" value="${row.CorporateId}" name="accCid">
				<input type="hidden" value="${row.AccountName}" name="accName">
				</form>
				</div>
		
	</c:forEach>

</body>
</html>