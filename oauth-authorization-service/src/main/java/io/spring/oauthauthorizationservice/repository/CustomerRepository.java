package io.spring.oauthauthorizationservice.repository;

import io.spring.oauthauthorizationservice.domain.Customer;
import org.springframework.data.repository.CrudRepository;


public interface CustomerRepository extends CrudRepository<Customer, Long> {


}