package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.HotelEntity;
import pl.sda.travelagency.repository.HotelRepository;

import java.util.List;

@Service
public class HotelService {
    private final HotelRepository hotelRepository;

    public HotelService(HotelRepository hotelRepository) {
        this.hotelRepository = hotelRepository;
    }

    public List<HotelEntity> listAllHotels() {
        return hotelRepository.findAll();
    }

    public void saveHotel(HotelEntity hotel) {
        hotelRepository.save(hotel);
    }

    public HotelEntity getHotelById(Long id) {
        return hotelRepository.findById(id).get();
    }

    public void deleteHotel(Long id) {
        hotelRepository.deleteById(id);
    }
}
