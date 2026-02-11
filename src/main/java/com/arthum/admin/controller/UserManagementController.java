package com.arthum.admin.controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/web/management")
public class UserManagementController {

    @GetMapping("/user")
    public String sample(Model model) {
        return "user-management";
    }
}