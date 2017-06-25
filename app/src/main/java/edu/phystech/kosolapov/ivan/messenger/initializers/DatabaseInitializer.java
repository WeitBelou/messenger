package edu.phystech.kosolapov.ivan.messenger.initializers;

import edu.phystech.kosolapov.ivan.messenger.chats.Chat;
import edu.phystech.kosolapov.ivan.messenger.chats.ChatRepository;
import edu.phystech.kosolapov.ivan.messenger.messages.Message;
import edu.phystech.kosolapov.ivan.messenger.messages.MessageRepository;
import edu.phystech.kosolapov.ivan.messenger.users.User;
import edu.phystech.kosolapov.ivan.messenger.users.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
@Profile("dev")
public class DatabaseInitializer implements CommandLineRunner {

    private final MessageRepository messageRepository;
    private final UserRepository userRepository;
    private final ChatRepository chatRepository;

    @Autowired
    public DatabaseInitializer(MessageRepository messageRepository,
                               UserRepository userRepository,
                               ChatRepository chatRepository) {

        this.messageRepository = messageRepository;
        this.userRepository = userRepository;
        this.chatRepository = chatRepository;
    }

    @Override
    public void run(String... strings) throws Exception {
        Chat chat = new Chat();
        chat.setTitle("Awesome chat");
        chatRepository.save(chat);

        User user = new User();
        user.setUsername("Vasya");
        user.setPassword("sha256secured");
        user.setChats(Collections.nCopies(1, chat));
        userRepository.save(user);


        Message message = new Message();
        message.setAuthor(user);
        message.setContent("My first messages");
        message.setChat(chat);

        messageRepository.save(message);
    }
}
