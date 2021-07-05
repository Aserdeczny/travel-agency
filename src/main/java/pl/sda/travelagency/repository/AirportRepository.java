package pl.sda.travelagency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.AirportEntity;

@Repository
public interface AirportRepository extends JpaRepository<AirportEntity, Long> {
}
