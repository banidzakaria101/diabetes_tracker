package com.controller;

import com.model.DiabetesTest;
import com.model.User;
import com.service.DiabetesTestService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/test")
public class DiabetesTestController {

    private final DiabetesTestService diabetesTestService;
    private final UserService userService;

    @Autowired
    public DiabetesTestController(DiabetesTestService diabetesTestService, UserService userService) {
        this.diabetesTestService = diabetesTestService;
        this.userService = userService;
    }

    @GetMapping("/add")
    public String showAddTestForm(Model model) {
        model.addAttribute("test", new DiabetesTest());
        return "addTest";
    }

    @PostMapping("/add")
    public String addTest(@ModelAttribute("test") DiabetesTest diabetesTest) {
        Long userId = diabetesTest.getUser().getId();
        User user = userService.getUserById(userId).orElse(null);

        if (user == null) {
            return "redirect:/error";
        }
        diabetesTest.setUser(user);
        diabetesTestService.save(diabetesTest);
        return "redirect:/user/display";
    }
}
