
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

	<%
	String addContact = user != null ? "addContact.jsp" : "login.jsp";
	String manageConatact = user != null ? "manageContact" : "login.jsp";
	String manageProfile = user != null ? "manageProfile.jsp" : "login.jsp";
	%>
	
	<%if(user!=null){%>
	<h1>Welcome Back <h2><%=user.getUsername()%></h2></h1>
	<%}%>
	<div>

		<div>
			<a href="<%=addContact%>">Add Contact</a>
		</div>
		<div>
			<a href="<%=manageConatact%>">Manage Contacts</a>
		</div>
		<div>
			<a href="<%=manageProfile%>">Manage Profile</a>
		</div>
	</div>


</body>
</html>