package edu.phystech.kosolapov.ivan.messenger.message;

import lombok.Data;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;

@Entity
@Data
class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String author;
    private String content;

    @Generated(value = GenerationTime.INSERT)
    private Date createdAt;

    @Generated(value = GenerationTime.ALWAYS)
    private Date updatedAt;
}
