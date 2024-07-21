package com.hts.controller;

import com.hts.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @GetMapping
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute User user, Model model) {
        System.out.println(" User Object Data :: >> " + user.toString());
        // In a real application, you would save the user to the database here
        model.addAttribute("message", "User "+user.getUsername()+ " registered successfully...");
        return "result";
    }

    @GetMapping("/welcome")
    public String showWelcomePage(Model model) {
        model.addAttribute("message", "Welcome to Docker.. ");
        return "result";
    }
}
