<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ResetStatistics</title>
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
			stmt0.executeUpdate("TRUNCATE PAGE_VISITS");
			connection.close();
		}
	}
	catch (SQLException e) {
		out.println("Statistics have been reset." + e.getMessage());
	}
%>

</body>
</html>