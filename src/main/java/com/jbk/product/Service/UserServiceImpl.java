package com.jbk.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.product.Dao.UserDao;
import com.jbk.product.Dao.UserDaoImpl;
import com.jbk.product.Entity.User;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDaoImpl dao;
	

	@Override
	public User loginUser(User user) {
		
		return dao.loginUser(user);
	}


	@Override
	public boolean saveUser(User user) {
		return dao.saveUser(user);
	}


	@Override
	public List<User> getAllUser() {
		return dao.getAllUser();
	}

	@Override
	public boolean deleteCustomer(String username) {
		return dao.deleteCustomer(username);
	}


	@Override
	public User getProfile(String username) {
		return dao.getProfile(username);
	}


	@Override
	public boolean updateCustomer(User user) {
		return dao.updateCustomer(user);
	}

}
