<%@page import="org.apache.tomcat.jni.User"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%!String userdbName;

	String userdbPsw;%>

	<%
	Connection con = null;

	PreparedStatement ps = null;

	ResultSet rs = null;

	User username;

	String driverName = "com.mysql.cj.jdbc.Driver";

	String url = "jdbc:mysql://localhost:3306/smartbank?autoReconnect=true&useSSL=false";

	String user = "root";

	String dbpsw = "12345";

	String sql = "select * from users where UserLoginId=? and UserPassword=?";

	String name = request.getParameter("user_name");

	String password = request.getParameter("password");

	if (!(name.isEmpty() && password.isEmpty()))

	{

		try {

			Class.forName(driverName);

			con = DriverManager.getConnection(url, user, dbpsw);

			ps = con.prepareStatement(sql);

			ps.setString(1, name);

			ps.setString(2, password);

			rs = ps.executeQuery();

			if (rs.next()) {

		userdbName = rs.getString("UserLoginId");

		userdbPsw = rs.getString("UserPassword");

		if (userdbName.equals("Alan") && password.equals(userdbPsw)) {
			RequestDispatcher req = request.getRequestDispatcher("admin.jsp");
			req.include(request, response);
			//response.sendRedirect("admin.jsp");
		}
			}
			else {
	%>

	<p style="color: red; margin-top: 150px; text-align: center;">Sorry,
		your are not admin</p>
	<%
	RequestDispatcher req = request.getRequestDispatcher("index.jsp");
	req.forward(request, response);

	rs.close();

	ps.close();
	}
	} catch (SQLException sqe) {

	System.out.println(sqe);
	}
	} else {
	%>
	<p style="color: red">Please Enter something</p>
	<%
	RequestDispatcher req = request.getRequestDispatcher("index.jsp");
	req.forward(request, response);
	//getServletContext().getRequestDispatcher("Login.jsp").include(request, response);
	}
	%>

</body>
</html>