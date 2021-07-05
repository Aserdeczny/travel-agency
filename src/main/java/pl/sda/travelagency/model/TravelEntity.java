package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "TRAVEL")
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class TravelEntity {

    @Id
    @GeneratedValue
    @Column
    private Long id;

    @Column
    private String name;

    @Column
    @Temporal(TemporalType.DATE)
    private Date fromDate;

    @Column
    @Temporal(TemporalType.DATE)
    private Date toDate;

    private Integer days;

    private String type;

    private Double cost;

    private Double costForChild;

    private String promoted;

    @Column(name = "max_adult")
    private Byte maxAdult;

    @Column(name = "max_child")
    private Byte maxChild;

    @ManyToOne
    @JoinColumn (name="from_airport_id" , nullable = false)
    private AirportEntity fromAirport;

    @ManyToOne
    @JoinColumn (name="to_airport_id" , nullable = false)
    private AirportEntity toAirport;

    @ManyToOne
    @JoinColumn (name="to_hotel_id" , nullable = false)
    private HotelEntity hotelEntity;
}

