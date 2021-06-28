package pl.sda.travelagency.model;

import javax.persistence.*;

@Entity
@Table(name = "HOTEL")
public class HotelEntity {

    @Id
    @Column
    @GeneratedValue
    private Long id;
}