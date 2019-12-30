package io.spring.basicrestresource.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
public class UnsecuredRestController {

    @RequestMapping(method = RequestMethod.GET, value = "/unsecured")
    public String getUnsecuredMessage(Principal principal){
        return "This is unsecured message!"+principal.getName();
    }
}
