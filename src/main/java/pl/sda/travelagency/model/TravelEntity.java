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
}

