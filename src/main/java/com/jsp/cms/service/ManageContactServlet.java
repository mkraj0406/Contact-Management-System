package com.jsp.cms.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.entity.Contact;
import com.jsp.cms.entity.User;

@WebServlet("/manageContact")
public class ManageContactServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		
		//Database Logic
		List<Contact> contacts= DaoSingleton.getContactDao().findAllContact(user);
		
		if(contacts!=null) {
		req.setAttribute("resultset", contacts);
		req.getRequestDispatcher("displayAllContact.jsp").forward(req, resp);
		}else {
			req.setAttribute("message", "no contact founds");
			req.getRequestDispatcher("addContact.jsp");
		}
	}
	
}
