package com.example.Vehicale_Serives_Center.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {

    @GetMapping({"/", "/HomePage"})
    public String homePage() {
        return "HomePage";
    }

    @GetMapping ("login")
    public String loginPage() {
        return "login";
    }

    // @PostMapping ("/HomePage")
    // public String homePages() {
    //     return "HomePage";
    // }
}