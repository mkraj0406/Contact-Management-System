<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<div class="mainContainer">
<h1>Please Login:-</h1>
<form action="login" method="get">
<label id="email">email:</label><br>
<input  type="email" name="email" placeholder="enter your email"><br>
<label id="password">password:</label><br>
<input type="password" name="password" placeholder="enter your password"><br>
<input type="submit" value="Login">
</form>
</div>
</body>
</html>