package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "COUNTRY")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CountryEntity {

    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn (name="continent_id" , nullable = false)
    private ContinentEntity continent;

    @OneToMany (mappedBy = "country")
    private Set<CityEntity> citys = new HashSet<>();

    public CountryEntity(String name, ContinentEntity continent) {
        this.name = name;
        this.continent = continent;
    }
}
