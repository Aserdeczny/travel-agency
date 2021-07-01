package pl.sda.travelagency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.TravelParticipantEntity;

@Repository
public interface TravelParticipantRepository extends JpaRepository<TravelParticipantEntity, Long> {
}
