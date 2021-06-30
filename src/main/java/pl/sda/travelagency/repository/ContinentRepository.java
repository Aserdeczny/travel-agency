package pl.sda.travelagency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.ContinentEntity;

@Repository
public interface ContinentRepository extends JpaRepository<ContinentEntity,Long> {
}
