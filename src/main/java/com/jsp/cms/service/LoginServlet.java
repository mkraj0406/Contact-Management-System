package com.jsp.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.dao.UserDao;
import com.jsp.cms.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		User user=DaoSingleton.getUserDao().findUserByEmailAndPassword(email,password);
		if(user!=null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("user", user);
			
			req.getRequestDispatcher("home.jsp").forward(req, resp);
		}else {
			req.setAttribute("error", "Failed to Login Please Type Valid email or passowrd!!");
			req.getRequestDispatcher("login.jsp");
		}
	}
}
