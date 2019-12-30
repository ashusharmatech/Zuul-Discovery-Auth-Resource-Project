package io.spring.oauthauthorizationservice.repository;

import io.spring.oauthauthorizationservice.domain.User;
import org.springframework.data.repository.CrudRepository;


public interface UserRepository extends CrudRepository<User, Long> {

	User findByUsername(String username);

}