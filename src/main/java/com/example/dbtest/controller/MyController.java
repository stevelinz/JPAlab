package com.example.dbtest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class MyController {
    public String showHomePage(Model model) {
        model.addAttribute("pageTitle", "Home Page");
        return "index";

    }
}
