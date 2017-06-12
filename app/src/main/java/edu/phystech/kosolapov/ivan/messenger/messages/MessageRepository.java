package edu.phystech.kosolapov.ivan.messenger.messages;

import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Long> {

}
