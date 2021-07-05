package pl.sda.travelagency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.TravelEntity;

@Repository
public interface TravelRepository extends JpaRepository<TravelEntity, Long> {
}
