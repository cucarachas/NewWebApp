<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Statistics</title>
<style>
	td.dates{
		max-width: 155px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: pre;
	}
	td.dates:hover{
		white-space: pre-wrap;
	}
</style>
</head>
<body bgcolor="FEF9E7">
<% 
try {
	String connectionURL = "jdbc:mysql://localhost:3306/page_visits?serverTimezone=UTC"; 
	Connection connection = null; 
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
	connection = DriverManager.getConnection(connectionURL, "root", "");
		if( !connection.isClosed() ){
			
			Statement stmt1 = connection.createStatement();
			ResultSet rs1 = stmt1.executeQuery("SELECT SHAPE, COUNT(*) NUM, GROUP_CONCAT(TS) DATES FROM PAGE_VISITS GROUP BY SHAPE ORDER BY SHAPE ASC");
			
			%>
				<table border="1" cellpadding="15" style="border-collapse:collapse">
				<thead>
					<tr>
						<th>Shape</th>
						<th align="center">Visits</th>
						<th>Dates</th>
					</tr>
				</thead>
				<tbody>
				
			<% 
			if ( rs1.next() ){
				while (rs1.next()) {
					out.println("<tr><td>" + rs1.getString("SHAPE") + "</td><td align='center'>" + rs1.getInt("NUM") + "</td><td class='dates'>" + rs1.getString("DATES") + "</td></tr>");
				}
			}else{
				out.println("<tr><td colspan='3' align='center'>No results found</td></tr>");
			}
			
			%> </tbody></table> <%
			rs1.close();
			stmt1.close();
			connection.close();
		}
	}
	catch (SQLException e) {
		out.println("Unable to connect to database." + e.getMessage());
	}
%>
</body>
</html>