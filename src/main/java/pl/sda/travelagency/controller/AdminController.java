package pl.sda.travelagency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import pl.sda.travelagency.Service.*;
import pl.sda.travelagency.model.*;

import java.util.List;

@Controller
public class AdminController {

    private final CountryService countryService;
    private final CityService cityService;
    private final ContinentService continentService;
    private final AirportService airportService;
    private final HotelService hotelService;
    private final TravelService travelService;

    public AdminController(CountryService countryService, CityService cityService, ContinentService continentService, AirportService airportService, HotelService hotelService, TravelService travelService) {
        this.countryService = countryService;
        this.cityService = cityService;
        this.continentService = continentService;
        this.airportService = airportService;
        this.hotelService = hotelService;
        this.travelService = travelService;
    }

    @GetMapping("/addTrip")
    public String getAddTrip(Model model) {


        List<ContinentEntity> listOfContinents = continentService.listAllContinents();
        List<CountryEntity> listOfCountrys = countryService.listAllCountrys();
        List<AirportEntity> listOfAirports = airportService.listAllAirports();
        List<HotelEntity> listOfHotels = hotelService.listAllHotels();

        model.addAttribute("continentList", listOfContinents);
        model.addAttribute("countryList", listOfCountrys);
        model.addAttribute("airportList", listOfAirports);
        model.addAttribute("hotelList", listOfHotels);
        return "admin/addTripPL";
    }

    @PostMapping("/addNewTrip")
    public RedirectView addTravel(@ModelAttribute TravelEntity travel) {
        travelService.saveTravel(travel);
        return new RedirectView("/addTrip");
    }

}
