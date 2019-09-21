package io.yodo.spring.security.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {

    @GetMapping("/forum")
    public String showInternal() {
        return "forum";
    }

    @GetMapping("/stoa")
    public String showStoa() {
        return "stoa";
    }

    @GetMapping("/academy")
    public String showAcedemy() {
        return "academy";
    }

    @GetMapping("/")
    public String showHome() {
        return "home";
    }

    @GetMapping("/access-denied")
    public String accessDenied() { return "access-denied"; }
}
