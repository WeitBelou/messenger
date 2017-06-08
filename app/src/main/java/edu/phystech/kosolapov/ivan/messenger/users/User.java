package edu.phystech.kosolapov.ivan.messenger.users;

import edu.phystech.kosolapov.ivan.messenger.message.Message;
import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    private String password;

    @OneToMany(mappedBy = "author")
    private Set<Message> messages;
}
