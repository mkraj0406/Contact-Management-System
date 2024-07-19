package com.jsp.cms.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.jsp.cms.config.EMFSingleton;
import com.jsp.cms.entity.User;
import com.mysql.cj.Query;

public class UserDao {

	public boolean addUser(User user) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		try {
			entityTransaction.begin();
			entityManager.persist(user);
			entityTransaction.commit();
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			entityManager.close();
		}
	}

	public User findUserById(int userId) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();

		User user = entityManager.find(User.class, userId);

		entityManager.close();
		return user;
	}

	public boolean updateUser(User user) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		try {
			entityTransaction.begin();
			
			entityManager.merge(user);
			
			entityTransaction.commit();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			entityManager.close();
		}
	}

	public boolean deleteUserById(User user) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		try {
			entityTransaction.begin();
			
			entityManager.remove(user);
			
			entityTransaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			entityManager.close();
		}
	}

	public User findUserByEmailAndPassword(String email, String password) {
		EntityManager entityManager = EMFSingleton.getEntityManagerFactory().createEntityManager();
		User user = null;
		
		try {
			javax.persistence.Query query = entityManager.createQuery("FROM User u WHERE u.email=?1 and u.password=?2");
			query.setParameter(1, email);
			query.setParameter(2, password);
			user = (User) query.getSingleResult();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			entityManager.close();
		}
		return user;
	}
	
	
	
}
