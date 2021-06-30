package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@Table(name = "TRAVEL_PARTICIPANT")
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class TravelParticipantEntity {

    @Id
    @ManyToOne
    @JoinColumn (name="person_id" , nullable = false)
    private PersonEntity person;

    @Id
    @ManyToOne
    @JoinColumn (name="travel_purchase_id" , nullable = false)
    private TravelPurchaseEntity travelPurchase;

}
