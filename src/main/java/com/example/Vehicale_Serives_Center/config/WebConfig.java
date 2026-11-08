package com.example.Vehicale_Serives_Center.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;

@Configuration 
public class WebConfig {
    @Autowired 
    private RoleInterceptor roleInterceptor;

    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(roleInterceptor).addPathPatterns("/admin/**", "/employee/**");
    }
}
