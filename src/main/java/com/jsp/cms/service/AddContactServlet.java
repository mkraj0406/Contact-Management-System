package com.jsp.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.entity.Contact;
import com.jsp.cms.entity.User;

@WebServlet("/addContact")
public class AddContactServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		String contactName = req.getParameter("contactName");
		int contactNumber = Integer.parseInt(req.getParameter("contactNumber"));

		Contact contact = new Contact();
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);
		contact.setUser(user);

		boolean result = DaoSingleton.getContactDao().addContact(contact);
		if(result) {
			resp.sendRedirect("addContact.jsp");
		}else {
			req.setAttribute("error", "Please enter valid contact Deatails");
		}

	}
}
