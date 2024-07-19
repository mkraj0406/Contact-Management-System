<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- Here adding navbar to every page -->
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css">
</head>
<body>
<h1>Register</h1>

<form action="register" method="post">
	<input type="text" name="username" placeholder="enter your username"><br>
	<input type="email" name="email" placeholder="enter your email"><br>
	<input type="password" name="password" placeholder="enter your password" ><br>
	<input type="submit" value="Register">
</form>

<% String message = (String)request.getAttribute("message"); 
if(message!=null){
%>
<%=message %>
<%} %>
</body>
</html>