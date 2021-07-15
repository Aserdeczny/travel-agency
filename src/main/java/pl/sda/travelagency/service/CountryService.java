package pl.sda.travelagency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.CountryEntity;
import pl.sda.travelagency.repository.CountryRepository;

import java.util.List;

@RequiredArgsConstructor
@Service
public class CountryService {
    private final CountryRepository countryRepository;

    public List<CountryEntity> listAll() {
        return countryRepository.findAll();
    }

    public void save(CountryEntity country) {
        countryRepository.save(country);
    }

    public CountryEntity getById(Long id) {
        return countryRepository.findById(id).get();
    }

    public void delete(Long id) {
        countryRepository.deleteById(id);
    }
}
