package com.jbk.product.Dao;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.jbk.product.Entity.User;

public interface UserDao {
	public User loginUser(User user);
	
	public boolean saveUser(User user);
	
	public List<User> getAllUser();
	
	public boolean deleteCustomer(String username);
	
	public boolean updateCustomer(User user);
	
	public User getProfile(String username);
}
