package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.TravelParticipantEntity;
import pl.sda.travelagency.repository.TravelParticipantRepository;

import java.util.List;

@Service
public class TravelParticipantService {
    private final TravelParticipantRepository travelParticipantRepository;

    public TravelParticipantService(TravelParticipantRepository travelParticipantRepository) {
        this.travelParticipantRepository = travelParticipantRepository;
    }

    public List<TravelParticipantEntity> listOfAllParticipants() {

        return travelParticipantRepository.findAll();
    }

    public void saveParticipant(TravelParticipantEntity participant) {

        travelParticipantRepository.save(participant);
    }

    public TravelParticipantEntity getParticipantById(Long id) {

        return travelParticipantRepository.findById(id).get();
    }

    public void deleteParticipant(Long id) {

        travelParticipantRepository.deleteById(id);
    }

}
