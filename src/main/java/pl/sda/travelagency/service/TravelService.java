package pl.sda.travelagency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.TravelEntity;
import pl.sda.travelagency.repository.TravelRepository;

import java.util.List;

@RequiredArgsConstructor
@Service
public class TravelService {

    private final TravelRepository travelRepository;

    public List<TravelEntity> listAll() {
        return travelRepository.findAll();
    }

    public void save(TravelEntity travel) {
        travelRepository.save(travel);
    }

    public TravelEntity getById(Long id) {
        return travelRepository.findById(id).get();
    }

    public void delete(Long id) {
        travelRepository.deleteById(id);
    }

    public void edit(TravelEntity travel, Long id) {
        TravelEntity edited = new TravelEntity(
                id,
                travel.getName(),
                travel.getFromDate(),
                travel.getToDate(),
                travel.getDays(),
                travel.getType(),
                travel.getCost(),
                travel.getCostForChild(),
                travel.getPromoted(),
                travel.getMaxAdult(),
                travel.getMaxChild(),
                travel.getFromAirport(),
                travel.getToAirport(),
                travel.getHotelEntity()
        );
        travelRepository.save(edited);
    }
}
