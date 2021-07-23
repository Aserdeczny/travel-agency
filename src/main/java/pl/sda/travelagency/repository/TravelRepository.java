package pl.sda.travelagency.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.TravelEntity;

import java.util.List;


@Repository
public interface TravelRepository extends JpaRepository<TravelEntity, Long> {
    @Modifying
    @Query("select u from TravelEntity u where u.toAirport.cityEntity.country.continent.name=:name")
    List<TravelEntity> findTravelByContientName(@Param("name") String countryName);

    @Query("select u from TravelEntity u where u.promoted ='2'")
    List<TravelEntity> findPromotedTravels();

    @Query("select u from TravelEntity u where u.promoted ='2' and u.toAirport.cityEntity.country.continent.name=:name")
    List<TravelEntity> findPromotedTravelsByContinent(@Param("name") String countryName);
}
