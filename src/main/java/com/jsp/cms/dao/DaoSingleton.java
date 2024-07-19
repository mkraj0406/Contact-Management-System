package com.jsp.cms.dao;


public class DaoSingleton {
	
	private static UserDao userDao;
	
	private static ContactDao contactDao;
	
	private DaoSingleton() {
		
	}
	
	public static  synchronized UserDao getUserDao() {
		if(userDao==null) {
			userDao = new UserDao();
		}
		return userDao;
	}
	
	public static synchronized ContactDao getContactDao() {
		if(contactDao==null) {
			contactDao = new ContactDao();
		}
		return contactDao;
	}
	
}
