package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.ContinentEntity;
import pl.sda.travelagency.repository.ContinentRepository;

import java.util.List;

@Service
public class ContinentService {
    private final ContinentRepository continentRepository;

    public ContinentService(ContinentRepository continentRepository) {
        this.continentRepository = continentRepository;
    }

    public List<ContinentEntity> listAllContinents() {
        return continentRepository.findAll();
    }

    public void saveContinent(ContinentEntity continent) {
        continentRepository.save(continent);
    }

    public ContinentEntity getContinentById(Long id) {
        return continentRepository.findById(id).get();
    }

    public void deleteContinent(Long id) {
        continentRepository.deleteById(id);
    }
}
