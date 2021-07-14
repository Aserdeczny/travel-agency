package pl.sda.travelagency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginRegister {

    @RequestMapping(value = "/login",method = { RequestMethod.GET, RequestMethod.POST })
    public String getLogin(){
        return "LoginPages/login";
    }
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String getRegister(){
        return "LoginPages/register";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(){
        return "LoginPages/login";
    }
}
