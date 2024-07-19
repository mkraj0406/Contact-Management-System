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
<style type="text/css">
body{
background-color: rgba(54, 21, 21, 0.461); 
display: flex;
align-items: center;
flex-direction: column;
}

</style>
</head>
<body>
<div>

<h1>Register:-</h1>

<form action="register" method="post">
<label id="username">username:</label><br>
	<input type="text" name="username" placeholder="enter your username"><br>
	<label id="email">email:</label><br>
	<input type="email" name="email" placeholder="enter your email"><br>
	<label id="password">password:</label><br>
	<input type="password" name="password" placeholder="enter your password" ><br>
	<input type="submit" value="Register">
</form>
</div>

<% String message = (String)request.getAttribute("message"); 
if(message!=null){
%>
<%=message %>
<%} %>
</body>
</html>