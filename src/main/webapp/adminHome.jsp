<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="adminHeader.jsp"%>
<body>
	<%
	String user = (String) session.getAttribute("USER");
	if (user != null){
		out.println("<h3>Welcome " + user + "</h3>");
	}else{
		response.sendRedirect("adminLogin.jsp");	
	}
	%>
	<h1>
		Login Successful <br>
	</h1>
</body>
</html>