<%@page import="com.jsp.cms.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%Contact contact =(Contact)request.getAttribute("contact");%>
	
	<div>
		<form action="saveUpdatedContact?contactId=<%=contact.getContactId()%>" method="post">
			<input type="text" name="contactName" value="<%=contact.getContactName()%>"><br>
			<input type="number" name="contactNumber" value="<%=contact.getContactNumber()%>"><br>
			<input type="submit" value="UPDATE">
		</form>
	</div>
	
	<%String message =(String)request.getAttribute("message"); %>
	<%if(message!=null){%>
	<h2><%=message%></h2>
	<%}%>
</body>
</html>