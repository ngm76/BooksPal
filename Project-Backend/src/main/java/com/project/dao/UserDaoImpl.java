package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.models.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<User> getAllUsers() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User");
		List<User> users = query.list();
		return users;
	}

	public void saveUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("User data saved");
		session.save(user);
				
	}

	public User getUser(String email) {
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, email);
		return user;
	}

	public void deleteUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		if(user!=null) {
			session.delete(user);
		}
		
	}

}
