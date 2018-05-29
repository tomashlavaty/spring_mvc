package com.myApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/") //na ake stranke sa spusti metoda?
    public String showPage(){
        System.out.println("showPage()");
        return "main-menu";//config file /WEB-INF/view/index.jsp
    }

}
