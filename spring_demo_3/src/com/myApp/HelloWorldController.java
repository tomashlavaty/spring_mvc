package com.myApp;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;

@Controller
//@RequestMapping("/hello") //level mapping, je dobre ak mapujeme rovnaku pathu viac krat napr showForm v inom cokrroleri
public class HelloWorldController {

    //control method tgo show form

    @RequestMapping("/showForm")
    public String showForm(){
        System.out.println("Show form");
        return("helloworld-form"); //helloworld-form.jsp
    }

    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    //controler to read form data

    //add doata to model

    @RequestMapping("/processFormVersionTwo")
    public String letsShout(HttpServletRequest request,Model model){
        System.out.println("procesFOrm ");
        //read the request parameter
        String theName=request.getParameter("studentName");
        //convert upper
        String result ="BLa "+theName.toUpperCase();

        //create message

        model.addAttribute("message",result);// key , value ,model sluzi ako kontajne na ukladanie info medzi viw a kontroler
        //add message
        return "helloworld";
    }

    @RequestMapping("/processFormVersionThree")
    public String letShout(@RequestParam("studentName") String theName, Model model){ //request param automaticky vykona getParameter

        theName="Hey cmn"+theName.toUpperCase();

        model.addAttribute("message",theName);
        return "helloworld";
    }



}
