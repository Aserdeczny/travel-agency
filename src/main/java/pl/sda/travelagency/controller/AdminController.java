package pl.sda.travelagency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

    @RequestMapping(value = {"/addTrip"}, method = RequestMethod.GET)
    public String getAddTrip() {
        return "addTripPL";
    }

    /*@RequestMapping(value = {"/addTrip"}, method = RequestMethod.POST)
    public String postAddTrip() {
        tripService.addTrip();
        return "admin/addTripPL";
    }*/

}
