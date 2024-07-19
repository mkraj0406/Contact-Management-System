<%@page import="java.util.Iterator"%>
<%@page import="com.jsp.cms.entity.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%List<Contact>  contacts = (List<Contact>)request.getAttribute("resultset");%>
	<%Iterator<Contact> contact = contacts.iterator();%>
	
	
  <table border="2" cellpadding="10px" cellspacing="2px" bordercolor="red" bgcolor="pink">
		<tr>
			<th>contactName</th>
			<th>contactNumber</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>
		<%while(contact.hasNext()){%>
		<% Contact contactDetail= contact.next();%>
		<tr>
		<td><%=contactDetail.getContactName()%></td>
		<td><%=contactDetail.getContactNumber()%></td>
		<td><a href="UpdateContactServlet?contactId=<%=contactDetail.getContactId()%>">Update</a></td>
		<td><a href="DeleteContactServlet?contactId=<%=contactDetail.getContactId()%>">Delete</a></td>
		<%} %>
		</tr>
	</table>
	
	<h1><a href="home.jsp">Go Back to Dashborad:-</a></h1>
</body>
</html>