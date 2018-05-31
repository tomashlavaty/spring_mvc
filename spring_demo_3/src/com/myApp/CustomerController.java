package com.myApp;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/customer")
public class CustomerController
{

    @RequestMapping("/list")
    public String listCustomers(Model theModel){


        return "list-customer";
    }

}
