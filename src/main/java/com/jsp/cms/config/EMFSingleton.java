package com.jsp.cms.config;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMFSingleton {
	
private static EntityManagerFactory entityManagerFactory;
	
	private EMFSingleton() {
		//private constructor to avoid instantiation
	}
	
	public static synchronized EntityManagerFactory getEntityManagerFactory() {
		if(entityManagerFactory==null) {
			entityManagerFactory=Persistence.createEntityManagerFactory("mysql-config");
		}
		return entityManagerFactory;
	}}
