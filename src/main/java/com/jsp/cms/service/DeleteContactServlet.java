package com.jsp.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.entity.Contact;

@WebServlet("/DeleteContactServlet")
public class DeleteContactServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		boolean result=DaoSingleton.getContactDao().deleteContact(Integer.parseInt(req.getParameter("contactId")));
		if(result) {
			resp.sendRedirect("manageContact");
		}
	}
}
