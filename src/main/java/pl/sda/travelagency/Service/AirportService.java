package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.AirportEntity;
import pl.sda.travelagency.model.CityEntity;
import pl.sda.travelagency.repository.AirportRepository;

import java.util.List;

@Service
public class AirportService {

    private final AirportRepository airportRepository;

    public AirportService(AirportRepository airportRepository) {
        this.airportRepository = airportRepository;
    }

    public List<AirportEntity> listAllAirports() {
        return airportRepository.findAll();
    }

    public void saveAirport(AirportEntity airport) {
        airportRepository.save(airport);
    }

    public AirportEntity getAirportById(Long id) {
        return airportRepository.findById(id).get();
    }

    public void deleteAirPort(Long id) {
        airportRepository.deleteById(id);
    }
}
