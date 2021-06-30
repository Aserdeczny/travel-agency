package pl.sda.travelagency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.CityEntity;

@Repository
public interface CityRepository extends JpaRepository<CityEntity,Long> {
}
