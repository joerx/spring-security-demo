package io.yodo.spring.security.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping("/internal")
    public String showInternal() {
        return "internal";
    }

    @GetMapping("/")
    public String showHome() {
        return "home";
    }
}
