package edu.phystech.kosolapov.ivan.messenger.initializers;

import edu.phystech.kosolapov.ivan.messenger.messages.Message;
import edu.phystech.kosolapov.ivan.messenger.messages.MessageRepository;
import edu.phystech.kosolapov.ivan.messenger.users.User;
import edu.phystech.kosolapov.ivan.messenger.users.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DatabaseInitializer implements CommandLineRunner {

    private final MessageRepository messageRepository;
    private final UserRepository userRepository;

    @Autowired
    public DatabaseInitializer(MessageRepository messageRepository,
                               UserRepository userRepository) {

        this.messageRepository = messageRepository;
        this.userRepository = userRepository;
    }

    @Override
    public void run(String... strings) throws Exception {
        User user = new User();
        user.setUsername("Vasya");
        user.setPassword("sha256secured");

        userRepository.save(user);


        Message message = new Message();
        message.setAuthor(user);
        message.setContent("My first messages");

        messageRepository.save(message);
    }
}
