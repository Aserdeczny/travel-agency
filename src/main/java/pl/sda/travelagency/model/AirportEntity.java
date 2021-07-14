package pl.sda.travelagency.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
@NoArgsConstructor
@Entity
@Getter
@Setter
@Table(name = "AIRPORT")
public class AirportEntity {
    @Id
    @GeneratedValue
    private Long id;

    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id", nullable = false)
    private CityEntity cityEntity;

    @OneToMany(mappedBy = "fromAirport")
    private Set<TravelEntity> travelFromAirport = new HashSet<>();

    @OneToMany(mappedBy = "toAirport")
    private Set<TravelEntity> travelToAirport = new HashSet<>();


    public AirportEntity(String name, CityEntity cityEntity) {
        this.name = name;
        this.cityEntity = cityEntity;
    }
}
