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
	
	<form action="updateProfile" method="post">
		<input type="text" name="username" value="<%=user.getUsername()%>"><br>
		<input type="email" name="email" value="<%=user.getEmail()%>"><br>
		<input type="password" value="<%=user.getPassword()%>">
		<input type="submit" value="UPDATE">
	</form>

</body>
</html>