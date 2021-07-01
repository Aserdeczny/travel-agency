package pl.sda.travelagency.Service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import pl.sda.travelagency.TravelAgencyApplication;
import pl.sda.travelagency.model.ContinentEntity;


@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = TravelAgencyApplication.class)
class ContinentServiceIT {

    @Autowired
    ContinentService continentService;

    ContinentEntity continent1 = new ContinentEntity("Europa");

    @Test
    void saveContinent() {
        continentService.saveContinent(continent1);
    }

    @Test
    void deleteContinent() {
        continentService.deleteContinent(1L);
    }
}