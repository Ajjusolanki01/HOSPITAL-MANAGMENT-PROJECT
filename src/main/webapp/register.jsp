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
			<h2>Patient Admission</h2>
		</div>

		<h2>
			<%
			String m = (String) request.getAttribute("msg");
			if (m != null)
				out.print(m);
			%>
		</h2>
		<form action="registerCtrl" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Patient Name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="pname">
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
					aria-describedby="emailHelp" name="age">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Patient Disease</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="disease">
			</div>

			Blood Group : <select class="form-control" name="bgroup">
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
					aria-describedby="emailHelp" name="mobile">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>