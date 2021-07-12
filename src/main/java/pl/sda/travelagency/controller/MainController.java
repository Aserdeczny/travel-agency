package pl.sda.travelagency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String viewHomePage(){
        return "index";
    }

    @RequestMapping(value = {"/searchTrip"}, method = RequestMethod.GET)
    public String getAddTrip() {
        return "searchTrip";
    }

}