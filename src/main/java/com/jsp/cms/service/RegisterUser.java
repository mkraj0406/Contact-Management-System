package com.jsp.cms.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;

import com.jsp.cms.entity.User;

@WebServlet("/register")
public class RegisterUser extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String passowrd=req.getParameter("password");
		
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(passowrd);
		
		
		//Database logic
		boolean result= DaoSingleton.getUserDao().addUser(user);
		if(result) {
			resp.sendRedirect("login.jsp");
		}else {
			req.setAttribute("message", "Registration Failed!!");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
		}
		
		
	}
}
