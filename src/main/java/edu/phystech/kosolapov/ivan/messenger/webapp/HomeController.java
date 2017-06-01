package edu.phystech.kosolapov.ivan.messenger.webapp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/home")
    public String home(@RequestHeader(name = "User-Agent") String userAgent, Model model) {
        model.addAttribute("userAgent", userAgent);
        return "home";
    }
}
