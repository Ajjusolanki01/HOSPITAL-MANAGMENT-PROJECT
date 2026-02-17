<%@page import="com.lifecare.dto.Patient"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<Patient> li = (ArrayList<Patient>) request.getAttribute("LIST");
	System.out.println(li);
	%>

	<%
	String user = (String) session.getAttribute("USER");
	if (user != null) {
		out.println("<h3>Welcome " + user + "</h3>");
	} else {
		response.sendRedirect("adminLogin.jsp");
	}
	%>

	<div class="jumbotron">
		<h2>PATIENT DETAILS</h2>
	</div>
	<%
	String m = (String) request.getAttribute("msg");
	if (m != null)
		out.print("<h3 style='color:blue;'>" + m + "</h3>");
	%>
	<div class="container">
		<table border="2" class="table">
			<thead class="thead thead-dark">
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
				<th>DISEASE</th>
				<th>GENDER</th>
				<th>BLOOD GROUP</th>
				<th>MOBILE</th>
				<th>DELETION</th>
				<th>UPDATION</th>

			</thead>

			<%
			for (Patient pp : li) {
			%>
			<tr>
				<td><%=pp.getId()%></td>
				<td><%=pp.getName()%></td>
				<td><%=pp.getAge()%></td>
				<td><%=pp.getDisease()%></td>
				<td><%=pp.getGender()%></td>
				<td><%=pp.getBloodGroup()%></td>
				<td><%=pp.getMobile()%></td>
				<td><a href="deleteCtrl?id=<%=pp.getId()%>"
					class="btn btn-outline-danger"
					onclick="return confirm('Are You Sure To Delete This Record ?')">
						DELETE</a></td>
				<td><a href="editCtrl?id=<%=pp.getId()%>"
					class="btn btn-outline-primary">EDIT</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>