package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "CONTINENT")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ContinentEntity {

    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String name;

    @OneToMany(mappedBy = "continent")
    private Set<CountryEntity> countrys = new HashSet<>();

    public ContinentEntity(String name) {
        this.name = name;
    }
}
