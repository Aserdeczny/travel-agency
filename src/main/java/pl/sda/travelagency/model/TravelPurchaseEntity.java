package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "TRAVEL_PURCHASE")
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class TravelPurchaseEntity {
    @Id
    @GeneratedValue
    @Column
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "travel_id", nullable = false)
    private TravelEntity travel;

    @OneToMany(mappedBy = "travel_purchase")
    private Set<TravelParticipantEntity> participants = new HashSet<>();
}




