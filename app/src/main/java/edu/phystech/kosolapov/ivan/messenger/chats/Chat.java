package edu.phystech.kosolapov.ivan.messenger.chats;

import edu.phystech.kosolapov.ivan.messenger.messages.Message;
import edu.phystech.kosolapov.ivan.messenger.users.User;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity(name = "chats")
public class Chat {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "chats")
    private List<User> members;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "chat")
    private List<Message> messages;
}
