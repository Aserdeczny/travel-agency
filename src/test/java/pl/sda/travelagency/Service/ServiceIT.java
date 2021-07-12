package pl.sda.travelagency.Service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import pl.sda.travelagency.TravelAgencyApplication;
import pl.sda.travelagency.model.*;


@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = TravelAgencyApplication.class)
class ServiceIT {

    @Autowired
    ContinentService continentService;
    @Autowired
    CountryService countryService;
    @Autowired
    CityService cityService;
    @Autowired
    AirportService airportService;
    @Autowired
    HotelService hotelService;


    ContinentEntity continent = new ContinentEntity("Azja");
    CountryEntity country = new CountryEntity("Japonia", continent);
    CityEntity city = new CityEntity("Tokyo", country);
    AirportEntity airport = new AirportEntity("Mizuki", city);
    HotelEntity hotel = new HotelEntity("Monte", 3L, "fajny",city);


    ContinentEntity continent1 = new ContinentEntity("Europa");
    CountryEntity country1 = new CountryEntity("Poland", continent1);
    CityEntity city1 = new CityEntity("Warsaw", country1);
    AirportEntity airport1 = new AirportEntity("Chopin", city1);
    HotelEntity hotel1 = new HotelEntity("Welington", 5L, "fajny",city1);
    @Test
    void saveContinent() {
        continentService.saveContinent(continent);
        countryService.saveCountry(country);
        cityService.saveCity(city);
        airportService.saveAirport(airport);
        hotelService.saveHotel(hotel);

        continentService.saveContinent(continent1);
        countryService.saveCountry(country1);
        cityService.saveCity(city1);
        airportService.saveAirport(airport1);
        hotelService.saveHotel(hotel1);
    }

    @Test
    void deleteContinent() {
        continentService.deleteContinent(1L);
    }
}