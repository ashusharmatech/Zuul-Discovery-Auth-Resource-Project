package io.spring.basicrestresource.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
@ComponentScan({ "io.spring.basicrestresource.controller" })
public class ResourceServerWebConfig implements WebMvcConfigurer {
    //
}
