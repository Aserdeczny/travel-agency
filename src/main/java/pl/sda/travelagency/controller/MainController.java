package pl.sda.travelagency.controller;

import lombok.RequiredArgsConstructor;
import org.dom4j.rule.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.sda.travelagency.model.ContinentEntity;
import pl.sda.travelagency.model.TravelEntity;
import pl.sda.travelagency.service.ContinentService;
import pl.sda.travelagency.service.TravelService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final TravelService travelService;
    private final ContinentService continentService;

@GetMapping("/index")
    public String getIndex(Model model){
    List<ContinentEntity> continens = continentService.listAll();
    List<TravelEntity> travels = travelService.listAll();
    List<TravelEntity> promoted = travelService.listOfPromoted();
    model.addAttribute("listOfContinents",continens);
    model.addAttribute("listOfTravels",travels);
    model.addAttribute("listOfPromoted",promoted);
    return "index";
}
}