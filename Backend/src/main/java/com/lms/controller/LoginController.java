package com.lms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.lms.dao.AdminRepository;
import com.lms.entity.Admin;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private AdminRepository adminRepo;

    @PostMapping("/login")
    public String login(
            String username,
            String password,
            HttpSession session) {

        Admin admin =
                adminRepo.findByUsernameAndPassword(
                        username,
                        password);

        if(admin != null) {

            session.setAttribute("admin", admin);

            return "redirect:/index";
        }

        return "login";
    }
    
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }
}