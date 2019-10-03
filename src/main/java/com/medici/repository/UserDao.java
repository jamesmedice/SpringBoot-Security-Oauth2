package com.medici.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.medici.model.User;

@Repository
public interface UserDao extends JpaRepository<User, Long> {

	User findByUsername(String username);

}
