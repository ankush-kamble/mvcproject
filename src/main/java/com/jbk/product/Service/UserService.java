package com.jbk.product.Service;

import java.util.List;

import com.jbk.product.Entity.User;

public interface UserService {
	
	public User loginUser(User user);
	
	public boolean saveUser(User user);
	
	public List<User> getAllUser();
	
	public boolean deleteCustomer(String username);
	
	public boolean updateCustomer(User user);
	
	public User getProfile(String username);
}
