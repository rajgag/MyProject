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
#delete:hover
{
	color:black;
	background-color: red;
}
#modify:hover
{
	color:black;
	background-color: green;
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
			<a href="list_User.jsp"
				style="text-decoration: none; color: black; margin-left: 10px; float: left;">Back</a>
		</div>
		<div class="sub">
			<h2 style="font-weight: bold; width: 70%;margin-top:15px;">List of User Page</h2>
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
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/smartbank" user="root"
		password="12345" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from users where UserStatus="Yes" and CorporateId=<%=request.getParameter("cid")%>;
      </sql:query>
	<c:forEach var="row" items="${result.rows}">
		<div class="column">
			<Button type="submit" id="btn">
				<h2>
					<c:out value="${row.UserLoginId}" />
				</h2>
			</Button>
			</div>
			<div style="width:20% ;height:50px ;margin:auto;margin-top: 5px;margin-left: 650px;">
			<form action="UserServlet" action="get" style="float:left">
			<input type="submit" value="Delete" name="action" id="delete" style="margin:5px;width: 100px;">
			<input type="hidden" value="${row.CorporateId}" name="Cid">
			<input type="hidden" value="${row.UserLoginId}" name= "Userid">
			</form>
			<form action="modify_User2.jsp" method="get" style="float:left">
			<input type="submit" value="Modify" name="action" id="modify" style="margin:5px;width: 100px;">
			<input type="hidden" value="${row.UserLoginId}" name= "id1">
			<input type="hidden" value="${row.UserAdd}" name= "id2">
			<input type="hidden" value="${row.UserDept}" name= "id3">
			<input type="hidden" value="${row.UserPhno}" name= "id4">
			</form>
			</div>
	</c:forEach>
	

</body>
</html>