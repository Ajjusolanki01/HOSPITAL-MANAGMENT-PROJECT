<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><%@include file="frontHeader.jsp"%>
<body>
	<div class="container">
		<h1>ADMIN LOGIN</h1>
		<%
		String m = (String) request.getAttribute("msg");
		if (m != null) {
		%>
		<h2 style='color:red;'><%=m%></h2>
		<%
		}
		%>

		<form action="checkLogin" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">USER NAME</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="uname">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">PASSWORD</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					name="pwd">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>