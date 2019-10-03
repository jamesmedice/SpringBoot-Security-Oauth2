package com.medici.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * 
 * @author a73s
 *
 */
@Configuration
@ComponentScan("com.medici")
@EnableJpaRepositories("com.medici.repository")
@EntityScan("com.medici.model")
public class RepositoryConfig {

}
