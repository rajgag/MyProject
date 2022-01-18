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
	color:black;
	text-align: center;
	margin-top: 10px;
	justify-content: center;
	margin-left: auto;
	margin-right: auto
}
#btn
{
width: 100%;
	color:black;
	text-align: center;
	
	margin-top: 10px;

}
</style>


</head>
<body style="background-color: #93CAED">
	<div class="main">
		<div class="sub" style="width: 15%; padding-top: 25px">
			<a href="corporateSetup.jsp"
				style="text-decoration: none; color: black; margin-left: 10px; float: left;">Back</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%;margin-top:15px;">Modify Corporate Page</h2>
		</div>
		<div style="width: 15%; justify-content: flex-end;">

			<a href="admin.jsp"
				style="text-decoration: none; color: black; float: right; font-size: 20px; font-weight: bold; margin-right: 20px;margin-top: 20px;">Home</a>

		</div>
	</div>
	<br><br>
	
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/smartbank" user="root"
		password="12345" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from corporate where status="Yes";
      </sql:query>
	<c:forEach var="row" items="${result.rows}">

		<div class="column">
			<a href="updateCorporate.jsp?CorporateName=${row.CorporateName}"><Button id="btn">
				<h2>
					<c:out value="${row.CorporateName}" />
				</h2>
			</Button></a>
		</div>
	</c:forEach>
	

</body>
</html>