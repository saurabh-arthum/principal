package com.arthum.admin.controller;

import com.arthum.admin.dto.LoginRequest;
import com.arthum.admin.dto.LoginResponse;
import com.arthum.admin.security.JwtUtil;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
@Tag(name = "Authentication", description = "Authentication APIs")
public class AuthController {
    private static final Logger log = LoggerFactory.getLogger(AuthController.class);

    private final JwtUtil jwtUtil;

    @Value("${auth.username}")
    private String validUsername;

    @Value("${auth.password}")
    private String validPassword;

    public AuthController(JwtUtil jwtUtil) {
        this.jwtUtil = jwtUtil;
    }

    @Operation(summary = "Login to get JWT token")
    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest request) {
        log.info("Login attempt for user: {}", request.getUsername());
        
        if (validUsername.equals(request.getUsername()) && validPassword.equals(request.getPassword())) {
            String token = jwtUtil.generateToken(request.getUsername());
            log.info("Login successful for user: {}", request.getUsername());
            return ResponseEntity.ok(new LoginResponse(token, "Login successful"));
        }
        
        log.warn("Login failed for user: {}", request.getUsername());
        return ResponseEntity.status(401).body(new LoginResponse(null, "Invalid credentials"));
    }
}
