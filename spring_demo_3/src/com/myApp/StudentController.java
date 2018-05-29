package com.myApp;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {


    @Value("#{countryOptions}")
    private Map<String, String> countryOptions;

    @RequestMapping("/showForm")
    public String showForm(Model model){
        System.out.println("student form");

        //create student obj
        Student theStudent=new Student();
        //add to model
        model.addAttribute("student",theStudent); //mame , valuse

        // add the country options to the model
        model.addAttribute("theCountryOptions", countryOptions);

        //asi je nutne najprv vlozit studenta do modelu a vo forme sa automaticky nasettuje
        return "student-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("student") Student student){

        System.out.println("Process Student form"+student.getFirstName()+" "+student.getLastName()+" "+student.getOperatingSystem());
        return "student-confirmation";
    }



}
