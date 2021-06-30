package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "PERSON")
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PersonEntity {


    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String firstName;

    @Column
    private String lastName;

    @Column
    private String login;

    @Column
    private String password;

    @Column(name = "indentity_number")
    private String indentityNumber;

    @OneToMany(mappedBy = "person")
    private Set<TravelParticipantEntity> participants = new HashSet<>();
}
