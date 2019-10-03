package com.medici.service;

import java.util.List;

import com.medici.model.User;

public interface UserService {

	User save(User user);

	List<User> findAll();

	void delete(long id);
}
