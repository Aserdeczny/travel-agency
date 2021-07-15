package pl.sda.travelagency.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
import pl.sda.travelagency.service.*;
import pl.sda.travelagency.model.*;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class TripController {

    private final CountryService countryService;
    private final ContinentService continentService;
    private final AirportService airportService;
    private final HotelService hotelService;
    private final TravelService travelService;


    @GetMapping("/travelControllPanel")
    public String getTravelControllPanel(Model model) {
        List<TravelEntity> travelList = travelService.listAll();
        model.addAttribute("travelList", travelList);
        return "admin/travelControllPanel";
    }

    @PostMapping("/deleteTravel/{id}")
    public RedirectView deleteTravel(@PathVariable Long id) {
        travelService.delete(id);
        return new RedirectView("/travelControllPanel");
    }

    @GetMapping("/editTravel/{id}")
    public String getEditTravel(@PathVariable Long id, Model model) {
        TravelEntity travel = travelService.getById(id);
        List<HotelEntity> hotelList = hotelService.listAll();
        List<AirportEntity> airportList = airportService.listAll();
        model.addAttribute("travel", travel);
        model.addAttribute("hotels", hotelList);
        model.addAttribute("airports", airportList);
        return "admin/editTravel";
    }

    @PostMapping("/editTravel/{id}")
    public RedirectView editTravel(@ModelAttribute TravelEntity travel, @PathVariable("id") Long id) {
        travelService.edit(travel, id);
        return new RedirectView("/travelControllPanel");
    }

    @GetMapping("/addTrip")
    public String getAddTrip(Model model) {


        List<ContinentEntity> listOfContinents = continentService.listAll();
        List<CountryEntity> listOfCountrys = countryService.listAll();
        List<AirportEntity> listOfAirports = airportService.listAll();
        List<HotelEntity> listOfHotels = hotelService.listAll();

        model.addAttribute("continentList", listOfContinents);
        model.addAttribute("countryList", listOfCountrys);
        model.addAttribute("airportList", listOfAirports);
        model.addAttribute("hotelList", listOfHotels);
        return "admin/addTripPL";
    }

    @PostMapping("/addNewTrip")
    public RedirectView addTravel(@ModelAttribute TravelEntity travel) {
        travelService.save(travel);
        return new RedirectView("/addTrip");
    }
}
