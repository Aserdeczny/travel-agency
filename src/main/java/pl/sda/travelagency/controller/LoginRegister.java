package pl.sda.travelagency.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.travelagency.service.UserService;
import pl.sda.travelagency.dto.UserDto;

@Controller
@RequiredArgsConstructor
public class LoginRegister {
    private final UserService userService;

    @RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
    public String getLogin() {
        return "LoginPages/login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegister() {
        return "LoginPages/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute(name = "user") UserDto user,
                           Model model) {
        userService.save(user);
        return "LoginPages/login";
    }
}
