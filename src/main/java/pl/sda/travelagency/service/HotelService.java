package pl.sda.travelagency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.HotelEntity;
import pl.sda.travelagency.repository.HotelRepository;

import java.util.List;

@RequiredArgsConstructor
@Service
public class HotelService {
    private final HotelRepository hotelRepository;

    public List<HotelEntity> listAll() {
        return hotelRepository.findAll();
    }

    public void save(HotelEntity hotel) {
        hotelRepository.save(hotel);
    }

    public HotelEntity getById(Long id) {
        return hotelRepository.findById(id).get();
    }

    public void delete(Long id) {
        hotelRepository.deleteById(id);
    }
}
