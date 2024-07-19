<%@page import="com.jsp.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
*body{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
#navbarConatiner{
    border: 2px solid red;
    height: 60px;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content:space-between;
    background-color: rgba(54, 21, 21, 0.461);
    color: whitesmoke;

}
.Logo{
    border: 2px solid black;
    height: 90%;
    width: 30%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 200%;
    text-decoration: none;
}
.navbar-menu{
    border: 2px solid black;
    height: 90%;
    width: 60%;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 30px;
    list-style: none;
}
#navbarConatiner ul li a{
    text-decoration: none;
    font-size: 240%;
    color: whitesmoke;
}
#navbarConatiner ul li a:hover{
    color: red;
    background-color: rgba(0, 0, 255, 0.192);
}

}
</style>

</head>
<body>
 <%User user1 = (User)session.getAttribute("user");%> 
 
	<nav id="navbarConatiner">
		<div class="Logo"><a href="home.jsp">Contact Management System</a></div>
		<ul class="navbar-menu">
			<li><a href="register.jsp">Register</a></li>
			
			<%if(user1!=null){ %>
			<li><a href="logout" >Logout</a></li>
			<%}else{%>
			<li><a href="login.jsp">Login</a></li>
			<%}%> 
		</ul>

	</nav>
</body>
</html>