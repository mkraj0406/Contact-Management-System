package com.jsp.cms.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.jsp.cms.config.EMFSingleton;
import com.jsp.cms.entity.Contact;
import com.jsp.cms.entity.User;

public class ContactDao {

	public boolean addContact(Contact contact) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();

		try {
			EntityTransaction et = entityManager.getTransaction();
			et.begin();

			entityManager.persist(contact);

			et.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			entityManager.close();
		}
	}

	public Contact findContactById(int contactId) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();
		Contact contact = null;
		try {
			contact = entityManager.find(Contact.class, contactId);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
		}
		return contact;
	}

	public List<Contact> findAllContact(User user) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();
		List<Contact> contacts = null;
		try {
			Query query = entityManager.createQuery("From Contact c Where c.user=?1");
			query.setParameter(1, user);
			contacts = query.getResultList();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
		}
		return contacts;
	}

	public boolean updateContact(Contact contact) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();

		try {
			EntityTransaction et = entityManager.getTransaction();
			et.begin();

			entityManager.merge(contact);

			et.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			entityManager.close();
		}
	}

	public boolean deleteContact(int contactId) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();

		try {
			EntityTransaction et = entityManager.getTransaction();
			et.begin();
			
			Contact contact = entityManager.find(Contact.class, contactId);
			entityManager.remove(contact);

			et.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			entityManager.close();
		}
	}
}
