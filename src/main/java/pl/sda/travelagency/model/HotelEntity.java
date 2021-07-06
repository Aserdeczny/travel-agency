package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "HOTEL")
@Getter
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
    private Byte starStandard;

    @Column
    private String description;


    @ManyToOne
    @JoinColumn (name="city_id" , nullable = false)
    private CityEntity city;

    @OneToMany(mappedBy = "hotelEntity")
    private Set<TravelEntity> travels = new HashSet<>();
}