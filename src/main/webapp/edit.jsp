<%@page import="com.lifecare.dto.Patient"%>
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
	<div class="container">
		<%
		String user = (String) session.getAttribute("USER");
		if (user != null) {
			out.println("<h3>Welcome " + user + "</h3>");
		} else {
			response.sendRedirect("adminLogin.jsp");
		}
		%>

		<div class="jumbotron">
			<h2>Patient Updation</h2>
		</div>
		<%
		Patient pp = (Patient) request.getAttribute("PTN");
		%>

		<form action="editCtrl" method="post">
		
			<div class="form-group">
				<label for="exampleInputEmail1">Patient ID</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="pid" value="<%=pp.getId()%>"
					readonly="readonly">
					
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Patient Name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="pname" value="<%=pp.getName()%>">
			</div>
			GENDER :
			<div class="form-check">
				<input class="form-check-input" type="radio" name="gender"
					id="exampleRadios1" value="Male"> <label
					class="form-check-label" for="exampleRadios1"> MALE</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="gender"
					id="exampleRadios1" value="Female"> <label
					class="form-check-label" for="exampleRadios1"> FEMALE</label>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Patient Age</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="age" value="<%=pp.getAge()%>">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Patient Disease</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="disease"
					value="<%=pp.getDisease()%>">
			</div>

			Blood Group : <select class="form-control" name="bgroup">
				<option value="<%=pp.getBloodGroup()%>"><%=pp.getBloodGroup()%></option>
				<option value="A+">A+</option>
				<option value="B+">B+</option>
				<option value="O+">O+</option>
				<option value="AB+">AB+</option>
				<option value="A-">A-</option>
				<option value="B-">B-</option>
				<option value="O-">O-</option>
				<option value="AB-">AB-</option>
			</select>

			<div class="form-group">
				<label for="exampleInputEmail1">Patient Mobile</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="mobile"
					value="<%=pp.getMobile()%>">
			</div>

			<button type="submit" class="btn btn-primary">UPDATE</button>
		</form>
	</div>
</body>
</html>