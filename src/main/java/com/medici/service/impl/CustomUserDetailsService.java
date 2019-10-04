package com.medici.service.impl;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.medici.model.OauthDetails;
import com.medici.repository.OauthRepository;

@Component
@Qualifier("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private OauthRepository oauthRepository;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		OauthDetails oauthDetails = oauthRepository.findByUsername(username);
		User user = new User(oauthDetails.getUsername(), oauthDetails.getPassword(), Collections.<GrantedAuthority> emptyList());
		return user;
	}
}
