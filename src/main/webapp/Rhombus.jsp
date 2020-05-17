<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rhombus</title>
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
			stmt0.executeUpdate("INSERT INTO PAGE_VISITS (SHAPE, TS) VALUES ('Rhombus', NOW())");
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
	<p>This is a <font color="blue">Blue Rhombus</font>.
	<p>
	<p>
	<svg height="440" width="440" xmlns="http://www.w3.org/2000/svg">
	<svg viewBox="0 0 30 31">
		<path d="M5.9,1.2L0.7,6.5l5.2,5.4l5.2-5.4L5.9,1.2z"
			style="fill:blue;stroke:black;stroke-width:0.1" />
	</svg>
</font>
</body>
</html>