package com.medici.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.medici.model.OauthDetails;

@Repository
public interface OauthRepository extends JpaRepository<OauthDetails, String> {

	OauthDetails findByUsername(String username);

}