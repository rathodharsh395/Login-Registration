package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.User;
import com.util.DBUtil;

public class UserDaoImpl implements UserDao{
	
	Connection connection; 
	@Override
	public boolean isValidUser(String username, String password) {
	
		String query = "select * from users where name=? and password=?";
		try {
			connection = DBUtil.getConnection();
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet resultSet = ps.executeQuery();
			
			return resultSet.next();
		
         }
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addUser(User user) {
		
		String query = "insert into users (name,dob,email,password) values(?,?,?,?)";
		
		try {
			connection = DBUtil.getConnection();
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, user.getUsername());
			ps.setDate(2, user.getDob());
			ps.setString(3,user.getEmail());
			ps.setString(4, user.getPassword());
			
			int rows = ps.executeUpdate();
			System.out.println("user add ho gya");
			return rows > 0;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	

	
	
}

