package com.arthum.admin.controller;

import com.arthum.admin.security.JwtUtil;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    private static final Logger log = LoggerFactory.getLogger(LoginController.class);

    private final JwtUtil jwtUtil;

    @Value("${auth.username}")
    private String validUsername;

    @Value("${auth.password}")
    private String validPassword;

    @Value("${jwt.cookie-expiration}")
    private int cookieExpiration;

    public LoginController(JwtUtil jwtUtil) {
        this.jwtUtil = jwtUtil;
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, HttpServletResponse response) {
        log.info("Web login attempt for user: {}", username);
        
        if (validUsername.equals(username) && validPassword.equals(password)) {
            String token = jwtUtil.generateToken(username);
            Cookie cookie = new Cookie("token", token);
            cookie.setHttpOnly(true);
            cookie.setPath("/");
            cookie.setMaxAge(cookieExpiration);
            response.addCookie(cookie);
            log.info("Web login successful for user: {}", username);
            return "masterdashboard";
        }
        
        log.warn("Web login failed for user: {}", username);
        return "redirect:/login?error";
    }

    @GetMapping("/logout")
    public String logout(HttpServletResponse response) {
        Cookie cookie = new Cookie("token", null);
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        return "redirect:/login";
    }
}
