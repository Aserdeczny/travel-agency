package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.CountryEntity;
import pl.sda.travelagency.repository.CountryRepository;

import java.util.List;

@Service
public class CountryService {
    private final CountryRepository countryRepository;

    public CountryService(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    public List<CountryEntity> listAllCountrys() {
        return countryRepository.findAll();
    }

    public void saveCountry(CountryEntity country) {
        countryRepository.save(country);
    }

    public CountryEntity getCountryById(Long id) {
        return countryRepository.findById(id).get();
    }

    public void deleteCountry(Long id) {
        countryRepository.deleteById(id);
    }
}
