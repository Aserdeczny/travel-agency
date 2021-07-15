package pl.sda.travelagency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.ContinentEntity;
import pl.sda.travelagency.repository.ContinentRepository;

import java.util.List;
@RequiredArgsConstructor
@Service
public class ContinentService {
    private final ContinentRepository continentRepository;

    public List<ContinentEntity> listAll() {
        return continentRepository.findAll();
    }

    public void save(ContinentEntity continent) {
        continentRepository.save(continent);
    }

    public ContinentEntity getById(Long id) {
        return continentRepository.findById(id).get();
    }

    public void delete(Long id) {
        continentRepository.deleteById(id);
    }
}
