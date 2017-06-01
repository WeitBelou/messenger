package edu.phystech.kosolapov.ivan.messenger.webapp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(@RequestHeader(name = "User-Agent") String userAgent, Model model) {
        model.addAttribute("userAgent", userAgent);
        return "index";
    }
}
