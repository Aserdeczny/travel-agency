package pl.sda.travelagency.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.travelagency.model.UserEntity;
import pl.sda.travelagency.repository.UserEntityRepository;

@Controller
@RequiredArgsConstructor
public class LoginRegister {
    private final UserEntityRepository userEntityRepository;

    @RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
    public String getLogin() {
        return "LoginPages/login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegister() {
        return "LoginPages/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute(name = "user") UserEntity user,
                           Model model) {
        userEntityRepository.save(user);
        return "LoginPages/login";
    }
}
