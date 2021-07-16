package pl.sda.travelagency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SingleTripController {
@RequestMapping(value = {"/singleTrip"}, method = RequestMethod.GET)
    public String getSingleTrip() {
        return "singleTrip";
    }
}



