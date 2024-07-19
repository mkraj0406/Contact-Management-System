<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
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
text-decoration: none;
}

</style>
</head>
<body>

	<%
	User user = (User) session.getAttribute("user");
	%>

	<h1>save contact:-</h1>
	<form action="addContact" method="post">
	<label id="contactName">name:</label><br>
		<input type="text" name="contactName" placeholder="enter your name"><br>
		<label id="number">number:</label><br>
		<input type="number" name="contactNumber"
			placeholder="enter your contact number"  maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits"><br> <input
			type="submit" value="SAVE">
	</form>
	
	<h1><a href="home.jsp" style="color: white; text-decoration:blink;">Go Back to Home Page:-</a></h1>

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