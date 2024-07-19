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
	<%String error =(String)request.getAttribute("error");
	if(error!=null){%>
	<h1><%=error%></h1>
	<%}%>
	
	<div>
		<table border="2" cellpadding="10px" cellspacing="2px" bordercolor="red" bgcolor="pink">
			<tr>
				<td><%=user.getUsername()%></td>
				<td><%=user.getEmail()%></td>
			</tr>
		</table>
	</div>
	
	<div>
		<a href="updateUser.jsp">Update</a>
		<a href="deleteUser">Delete</a>
	</div>

</body>
</html>