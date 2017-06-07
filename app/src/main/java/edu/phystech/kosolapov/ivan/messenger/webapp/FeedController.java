package edu.phystech.kosolapov.ivan.messenger.webapp;

import edu.phystech.kosolapov.ivan.messenger.message.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/feed")
public class FeedController {

    private final MessageRepository messageRepository;

    @Autowired
    public FeedController(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    @GetMapping
    public String showFeed(Model model) {
        model.addAttribute("messages", messageRepository.findAll());
        return "feed";
    }
}
