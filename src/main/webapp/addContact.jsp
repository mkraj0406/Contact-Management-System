<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	User user = (User) session.getAttribute("user");
	%>

	<h1>save your contact:-</h1>
	<form action="addContact?user=<%=user%>" method="post">
		<input type="text" name="contactName" placeholder="enter your name"><br>
		<input type="number" name="contactNumber"
			placeholder="enter your contact number"><br> <input
			type="submit" value="SAVE">
	</form>

	<%
	String message = (String) request.getAttribute("message");
	String error = (String) request.getAttribute("error");
	%>
	<%
	if (message != null) {
	%>
	<h2><%=message%></h2>
	<%
	}
	%>
	<%
	if(error!=null){
	%>
	<h2><%=error%></h2>
	<%
	}
	%>

</body>
</html>