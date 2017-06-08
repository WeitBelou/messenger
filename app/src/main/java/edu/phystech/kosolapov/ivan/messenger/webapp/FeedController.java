package edu.phystech.kosolapov.ivan.messenger.webapp;

import edu.phystech.kosolapov.ivan.messenger.message.Message;
import edu.phystech.kosolapov.ivan.messenger.message.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/feed")
public class FeedController {

    private final MessageRepository repository;

    @Autowired
    public FeedController(MessageRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public String showFeed(@ModelAttribute("message") Message message) {
        return "feed";
    }

    @PostMapping
    public String addMessage(@Valid @ModelAttribute("message") Message message, BindingResult result) {
        if (!result.hasErrors()) {
            repository.save(message);
            return "redirect:/feed";
        }
        return "feed";
    }
}
