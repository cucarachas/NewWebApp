<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
<head>
<title>CCP6418 Coursework #2</title>
</head>
<body bgcolor="FEF9E7">
    <p>
    <center>
		<img src="logo.jpg">
	</center>
	<p>
	<p>
	
	<font face="verdana" color="green">
	<h1>Welcome to CCP6418!</h1>
	<p>
	<p>
	<p>Today's topic: Geometric Shapes.
	<p>Check the following ones.
	<ol>
        <li><a href="Circle.jsp">Circle</a></li>
        <li><a href="Ellipse.jsp">Ellipse</a></li>
        <li><a href="RightTriangle.jsp">Right Triangle</a></li>
        <li><a href="RightRectangle.jsp">Right Rectangle</a></li>
        <li><a href="IsoscelesTrapezoid.jsp">Isosceles Trapezoid</a></li>
        <li><a href="IsoscelesTriangle.jsp">Isosceles Triangle</a></li>
        <li><a href="EquilateralTriangle.jsp">Equilateral Triangle</a></li>
        <li><a href="Square.jsp">Square<a></li>
        <li><a href="Pentagon.jsp">Pentagon</a></li>
        <li><a href="Hexagon.jsp">Hexagon</a></li>
        <li><a href="Octagon.jsp">Octagon</a></li>
        <li><a href="Parallelogram.jsp">Parallelogram</a></li>
        <li><a href="Rhombus.jsp">Rhombus</a></li>
    </ol>
    <br>
    <div>
    	<a href="ViewStatistics.jsp"><button>View Statistics</button></a>
    	<a href="ResetStatistics.jsp"><button>Reset Statistics</button></a>
    </div>
    <br>
    <p>* <i>We let know that we store Statistics on each web page view</i></p>
	<br>
	<br>
	<center>
		<font size="2">
		<p>&copy; AthTech, 2020, all rights reserved.
		<p>email: <a href="mailto:sefremidis@athtech.gr">sefremidis@athtech.gr</a>
		<p>URL: <a href="https://athtech.gr">www.athtech.gr</a>
		<p>Current time: <%=LocalDateTime.now()%>
		</p>
		</font>
	</center>
	</font>
</body>
</html>

