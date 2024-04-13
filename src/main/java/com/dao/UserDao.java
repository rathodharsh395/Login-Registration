package com.dao;

import com.bean.User;

public interface UserDao {
	
	boolean isValidUser(String username,String password);
	
	boolean addUser(User user);
}
