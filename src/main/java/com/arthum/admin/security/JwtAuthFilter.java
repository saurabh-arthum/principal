package com.arthum.admin.security;


import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtAuthFilter extends OncePerRequestFilter {

    private final JwtUtil jwtUtil;

    public JwtAuthFilter(JwtUtil jwtUtil) {
        this.jwtUtil = jwtUtil;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        String path = request.getRequestURI();

//        if (path.equals("/login") || path.equals("/auth/login") || path.equals("/") ||
//            path.startsWith("/swagger-ui") || path.startsWith("/api-docs") ||
//                path.startsWith("/css/") || path.startsWith("/js/") || path.startsWith("/images/")
//                || path.startsWith("/bootstrap-5.3.8-dist")) {
//            filterChain.doFilter(request, response);
//            return;
//        }
//
//        String token = null;
//        String authHeader = request.getHeader("Authorization");
//
//        if (authHeader != null && authHeader.startsWith("Bearer ")) {
//            token = authHeader.substring(7);
//        } else {
//            Cookie[] cookies = request.getCookies();
//            if (cookies != null) {
//                for (Cookie cookie : cookies) {
//                    if ("token".equals(cookie.getName())) {
//                        token = cookie.getValue();
//                        break;
//                    }
//                }
//            }
//        }
//
//        if (token == null || !jwtUtil.isTokenValid(token)) {
//            if (path.startsWith("/api/")) {
//                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
//                response.getWriter().write("{\"error\":\"Unauthorized\"}");
//                return;
//            } else {
//                response.sendRedirect("/login");
//                return;
//            }
//        }

        filterChain.doFilter(request, response);
    }

}
