package pl.sda.travelagency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.CityEntity;
import pl.sda.travelagency.repository.CityRepository;

import java.util.List;
@RequiredArgsConstructor
@Service
public class CityService {
    private final CityRepository cityRepository;


    public List<CityEntity> listAll() {
        return cityRepository.findAll();
    }

    public void save(CityEntity city) {
        cityRepository.save(city);
    }

    public CityEntity getById(Long id) {
        return cityRepository.findById(id).get();
    }

    public void delete(Long id) {
        cityRepository.deleteById(id);
    }
}
