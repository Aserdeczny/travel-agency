package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "HOTEL")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class HotelEntity {

    @Column
    @Id
    @GeneratedValue
    private Long id;

    @Column
    private String name;

    @Column(name = "star_standard")
    private Long starStandard;

    @Column
    private String description;


    @ManyToOne
    @JoinColumn (name="city_id" , nullable = false)
    private CityEntity city;

    @OneToMany(mappedBy = "hotelEntity")
    private Set<TravelEntity> travels = new HashSet<>();

    public HotelEntity(String name, Long starStandard, String description, CityEntity city) {
        this.name = name;
        this.starStandard = starStandard;
        this.description = description;
        this.city = city;
    }
}