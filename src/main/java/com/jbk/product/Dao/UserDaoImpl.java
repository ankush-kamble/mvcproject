package com.jbk.product.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.jbk.product.Entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User loginUser(User user) {
		Session session = sessionFactory.openSession();
		User user1 = null;
		try {
			user1 = session.get(User.class, user.getUsername());
			if (user1 != null) {
				if (user1.getPassword().equals(user.getPassword())) {

				} else {
					user1 = null;
				}
			} else {
				user1 = null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user1;
	}

	@Override
	public boolean saveUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean isAdded = false;
		try {
			User user2 = session.get(User.class, user.getUsername());
			if (user2 == null) {
				session.save(user);
				transaction.commit();
				isAdded = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return isAdded;
	}

	@Override
	public List<User> getAllUser() {
		Session session = sessionFactory.openSession();
		List<User> list = null;

		try {
			Criteria criteria = session.createCriteria(User.class);
			list = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public boolean deleteCustomer(String username) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean isDeleted = false;
		try {
			User user = session.get(User.class, username);
			session.delete(user);
			transaction.commit();
			isDeleted = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return isDeleted;
	}

	public User getProfile(String username) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		User user = null;
		try {
			user = session.get(User.class, username);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}

	@Override
	public boolean updateCustomer(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean isUpdated = false;
		try {
			session.update(user);
			transaction.commit();
			isUpdated = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return isUpdated;
	}

}
