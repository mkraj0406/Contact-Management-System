package com.jsp.cms.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cms.dao.DaoSingleton;
import com.jsp.cms.entity.Contact;

@WebServlet("/saveUpdatedContact")
public class SaveUpdatedContactServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String contactName =  req.getParameter("contactName");
		int contactNumber = Integer.parseInt(req.getParameter("contactNumber"));
		
		Contact contact=DaoSingleton.getContactDao().findContactById(Integer.parseInt(req.getParameter("contactId")));
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);
		
		boolean result= DaoSingleton.getContactDao().updateContact(contact);
		if(result) {
			resp.sendRedirect("manageContact");
		}else {
			req.setAttribute("message", "Please enter Valid contact");
			req.getRequestDispatcher("saveUpdatedContact.jsp");
		}
	}
}
