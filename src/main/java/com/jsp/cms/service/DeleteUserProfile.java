package com.jsp.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.entity.User;

@WebServlet("/deleteUser")
public class DeleteUserProfile extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User user = (User) req.getSession().getAttribute("user");
		
		boolean result=DaoSingleton.getUserDao().deleteUserById(user);
		if(result){
			resp.sendRedirect("home.jsp");
		}
	}
}
