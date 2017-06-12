package edu.phystech.kosolapov.ivan.messenger.users;

import edu.phystech.kosolapov.ivan.messenger.messages.Message;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    private String password;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "author")
    private List<Message> messages;
}
