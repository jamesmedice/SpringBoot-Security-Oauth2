package com.medici.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.medici.repository.OauthRepository;

@Component
@Qualifier("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private OauthRepository oauthRepository;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = oauthRepository.findByUsername(username);
		return user;
	}
}
