package pl.sda.travelagency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.AirportEntity;
import pl.sda.travelagency.repository.AirportRepository;

import java.util.List;
@RequiredArgsConstructor
@Service
public class AirportService {

    private final AirportRepository airportRepository;


    public List<AirportEntity> listAll() {
        return airportRepository.findAll();
    }

    public void save(AirportEntity airport) {
        airportRepository.save(airport);
    }

    public AirportEntity getById(Long id) {
        return airportRepository.findById(id).get();
    }

    public void delete(Long id) {
        airportRepository.deleteById(id);
    }
}
