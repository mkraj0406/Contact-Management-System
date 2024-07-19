<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Please Login:-</h1>
<form action="login" method="get">
<input type="email" name="email" placeholder="enter your email"><br>
<input type="password" name="password" placeholder="enter your password"><br>
<input type="submit" value="Login">
</form>
</body>
</html>