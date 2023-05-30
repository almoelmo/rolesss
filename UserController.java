package com.example.roles.controller;

import com.example.roles.model.User;
import com.example.roles.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping(value = "/user/users")
    public String getUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "user-users";
    }
    @GetMapping(value = "/user/users/{id}")
    public String getUserById(Model model, @PathVariable long id) {
        User user = null;
        try {
            user = userService.findById(id);
            model.addAttribute("allowDelete", false);
        } catch (Exception ex) {
            model.addAttribute("errorMessage", ex.getMessage());
        }
        model.addAttribute("user", user);
        return "user-user";
    }



}
