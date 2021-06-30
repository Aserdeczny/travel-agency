package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.TravelPurchaseEntity;
import pl.sda.travelagency.repository.TravelPurchaseRepository;

import java.util.List;

@Service
public class TravelPurchaseService {
    private final TravelPurchaseRepository travelPurchaseRepository;

    public TravelPurchaseService(TravelPurchaseRepository travelPurchaseRepository) {
        this.travelPurchaseRepository = travelPurchaseRepository;
    }

    public List<TravelPurchaseEntity> listOfAllPurchases() {
        return travelPurchaseRepository.findAll();
    }

    public void saveTravelPurchase(TravelPurchaseEntity purchase) {
        travelPurchaseRepository.save(purchase);
    }

    public TravelPurchaseEntity getPurchaseById(Long id) {
        return travelPurchaseRepository.findById(id).get();
    }

    public void deletePurchase(Long id) {
        travelPurchaseRepository.deleteById(id);
    }
}
