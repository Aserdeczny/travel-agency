package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.CityEntity;
import pl.sda.travelagency.repository.CityRepository;

import java.util.List;

@Service
public class CityService {
    private final CityRepository cityRepository;

    public CityService(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }

    public List<CityEntity> listAllCities() {
        return cityRepository.findAll();
    }

    public void saveCity(CityEntity city) {
        cityRepository.save(city);
    }

    public CityEntity getCityById(Long id) {
        return cityRepository.findById(id).get();
    }

    public void deleteCity(Long id) {
        cityRepository.deleteById(id);
    }
}
