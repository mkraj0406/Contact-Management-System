
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: rgba(54, 21, 21, 0.461);
	margin: 0;
	padding: 0;
}

.welcomeMessage {
	/* border: 2px solid green; */
	height: 40px;
	width: 25%;
	display: flex;
	align-items: center;
	gap: 5%;
}

.mainConatainer {
	/* border: 2px solid rgb(18, 18, 17); */
	height: 400px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: rgba(54, 21, 21, 0.461);
}

.subContainer {
	/* border: 2px solid blue; */
	height: 95%;
	width: 95%;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

.subContainer div {
	border-radius: 5px;
	border: 2px solid black;
	height: 25%;
	width: 25%;
	background-color: rgb(142 93 93/ 72%);
	display: flex;
	align-items: center;
	justify-content: center;
	transform-style: preserve-3d;
}

.subContainer div a {
	text-decoration: none;
	font-size: larger;
	color: whitesmoke;
}
</style>
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

	<%
	if (user != null) {
	%>
	<div class="welcomeMessage">
		<h1>Welcome Back</h1>
		<h2><%=user.getUsername()%></h2>
	</div>
	<%
	}
	%>

	<div class="mainConatainer">
		<div class="subContainer">

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
	</div>
	<p>A Contact Management System (CMS) is a software application
		designed to efficiently manage and organize contact information. It
		serves as a centralized repository for storing contact details and
		facilitates easy access, retrieval, and management of this data. The
		system is widely used by individuals, businesses, and organizations to
		maintain relationships and streamline communication.</p>
		<ul>
		<li>Hibernate/JPA : For database interaction.</li>
		<li>Servlets : For handling HTTP requests and responses.</li>
		<li>HTML/CSS : For front-end development. </li>
		</ul>


</body>
</html>