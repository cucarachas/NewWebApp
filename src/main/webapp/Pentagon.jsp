<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pentagon</title>
</head>
<body bgcolor="FEF9E7">
<% 
try {
	String connectionURL = "jdbc:mysql://localhost:3306/page_visits?serverTimezone=UTC"; 
	Connection connection = null; 
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
	connection = DriverManager.getConnection(connectionURL, "root", "");
		if( !connection.isClosed() ){
			Statement stmt0 = connection.createStatement();
			stmt0.executeUpdate("INSERT INTO PAGE_VISITS (SHAPE, TS) VALUES ('Pentagon', NOW())");
			connection.close();
		}
	}
	catch (SQLException e) {
		out.println("Unable to connect to database." + e.getMessage());
	}
%>
<font face="verdana">
	<h1>Hello Visitor!</h1>

	<p>
	<p>This is a <font color="blue">Blue Pentagon</font>.
	<p>
	<p>
	<svg height="200" width="200" xmlns="http://www.w3.org/2000/svg">
		<polygon points="0,59 31,154 131,154 162,59 81,0"
			style="fill:blue;stroke:black;stroke-width:1" />
	</svg>
</font>
</body>
</html>