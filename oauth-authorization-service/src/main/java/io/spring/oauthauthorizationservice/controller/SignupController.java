package io.spring.oauthauthorizationservice.controller;

import java.util.Arrays;

import io.spring.oauthauthorizationservice.domain.UserRole;
import io.spring.oauthauthorizationservice.service.SignupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.spring.oauthauthorizationservice.domain.User;

@RestController
public class SignupController {
	
	@Autowired
	private SignupService signupService;

    /**
     * 
     * user signup
     * @param user
     * @return
     */
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public ResponseEntity<?> signup(@RequestBody User user) {
   		user.setRoles(Arrays.asList(new UserRole("USER")));
    	User newUser = signupService.addUser(user);
    	return new ResponseEntity<>(HttpStatus.CREATED);
    }
    
}