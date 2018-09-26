package com.project.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.models.User;

@Service
public interface UserDao {

	List<User> getAllUsers();

	void saveUser(User user);

	User getUser(String username);

	void deleteUser(User user);

}
