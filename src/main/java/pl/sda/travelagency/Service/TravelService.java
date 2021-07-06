package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.TravelEntity;
import pl.sda.travelagency.repository.TravelRepository;

import java.util.List;

@Service
public class TravelService {

    private final TravelRepository travelRepository;

    public TravelService(TravelRepository travelRepository) {
        this.travelRepository = travelRepository;
    }


    public List<TravelEntity> listAllTravels() {
        return travelRepository.findAll();
    }

    public void saveTravel(TravelEntity travel) {
        travelRepository.save(travel);
    }

    public TravelEntity getTravelById(Long id) {
        return travelRepository.findById(id).get();
    }

    public void deleteTravel(Long id) {
        travelRepository.deleteById(id);
    }

}
