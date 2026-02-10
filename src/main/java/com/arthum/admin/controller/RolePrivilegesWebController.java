package com.arthum.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/web/rolePrivileges")
public class RolePrivilegesWebController {

    @GetMapping("/role")
    public String sample(Model model) {
        model.addAttribute("includeJsp","roles-privileges-master.jsp");
        return "roles-privileges";
    }
}
