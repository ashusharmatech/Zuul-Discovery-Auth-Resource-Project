package io.spring.oauthauthorizationservice.security;

import java.util.Arrays;

import io.spring.oauthauthorizationservice.domain.User;
import io.spring.oauthauthorizationservice.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserRepository userRepository;
	
//	@Autowired
//	PasswordEncoder passwordEncoder;
	
    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
//    	if (userRepository.count() == 0) {
//    		System.out.println("There is no user exist in the database. So, adding two users");
//    		userRepository.save(new User("crmadmin", passwordEncoder.encode("adminpass"), Arrays.asList(new UserRole("USER"), new UserRole("ADMIN"))));
//    		userRepository.save(new User("crmuser", passwordEncoder.encode("crmpass"), Arrays.asList(new UserRole("USER"))));
//    	}
    	
        User user = userRepository.findByUsername(userName);
        if(user == null){
            throw new UsernameNotFoundException("UserName "+userName+" not found");
        }
        return new CustomUserDetails(user);
    }	

}