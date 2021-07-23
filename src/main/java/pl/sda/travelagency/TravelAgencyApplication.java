package pl.sda.travelagency;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import pl.sda.travelagency.model.*;
import pl.sda.travelagency.repository.UserRoleRepository;
import pl.sda.travelagency.service.*;

import java.util.List;

@SpringBootApplication
public class TravelAgencyApplication implements ApplicationRunner {

    @Autowired
    private ContinentService continentService;
    @Autowired
    private CountryService countryService;
    @Autowired
    private CityService cityService;
    @Autowired
    private AirportService airportService;
    @Autowired
    private HotelService hotelService;
    @Autowired
    private UserRoleRepository userRoleRepository;

    public static void main(String[] args) {
        SpringApplication.run(TravelAgencyApplication.class, args);
    }


    @Override
    public void run(ApplicationArguments args) throws Exception {
        List<ContinentEntity> continents = continentService.listAll();
        ContinentEntity europa = new ContinentEntity("Europa");
        ContinentEntity azja = new ContinentEntity("Azja");
        ContinentEntity afryka = new ContinentEntity("Afryka");

        CountryEntity polska = new CountryEntity("Polska", europa);
        CountryEntity japonia = new CountryEntity("Japonia", azja);
        CountryEntity egipt = new CountryEntity("Egipt", afryka);

        CityEntity warszawa = new CityEntity("Warszawa", polska);
        CityEntity tokyo = new CityEntity("Tokyo", japonia);
        CityEntity kair = new CityEntity("Kair", egipt);

        AirportEntity chopin = new AirportEntity("Chopin", warszawa);
        AirportEntity haneda = new AirportEntity("Haneda", tokyo);
        AirportEntity cairoAirport = new AirportEntity("Cairo Airport", kair);

        HotelEntity sheratonGrand = new HotelEntity("Sheraton Grand", 5L, "Ekskluzywny", warszawa);
        HotelEntity regisOsaka = new HotelEntity("Regis Osaka", 5L, "Super hotel", tokyo);
        HotelEntity ramses = new HotelEntity("Ramses", 5L, "Dobra lokalizacja", kair);

        if (continents.size() == 0) {
            continentService.save(europa);
            continentService.save(afryka);
            continentService.save(azja);

            countryService.save(polska);
            countryService.save(japonia);
            countryService.save(egipt);

            cityService.save(warszawa);
            cityService.save(tokyo);
            cityService.save(kair);

            airportService.save(chopin);
            airportService.save(haneda);
            airportService.save(cairoAirport);

            hotelService.save(sheratonGrand);
            hotelService.save(regisOsaka);
            hotelService.save(ramses);
        }

        List<UserRoleEntity> userRoles = userRoleRepository.findAll();
        if (userRoles.isEmpty()) {
            UserRoleEntity userRole = UserRoleEntity.builder().code(UserRoleCode.ROLE_USER).build();
            UserRoleEntity adminRole = UserRoleEntity.builder().code(UserRoleCode.ROLE_USER).build();
            userRoleRepository.save(userRole);
            userRoleRepository.save(adminRole);
        }

    }
}
