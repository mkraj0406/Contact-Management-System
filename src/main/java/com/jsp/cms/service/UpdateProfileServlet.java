package com.jsp.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.entity.User;

@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = (String) req.getAttribute("username");
		String email = (String) req.getAttribute("email");

		User user = (User) req.getSession().getAttribute("user");
		user.setUsername(username);
		user.setEmail(email);

		boolean result = DaoSingleton.getUserDao().updateUser(user);
		if(result) {
			resp.sendRedirect("manageProfile");
		}else {
			req.setAttribute("error", "Please enter correct email and passowrd!!");
			req.getRequestDispatcher("manageProfile.jsp").forward(req, resp);
		}

	}
}
