package com.myApp;

import java.util.LinkedHashMap;

public class Student {
    private String firstName;
    private String lastName;
    private String country;
    private String favoriteLanguage;
    private String operatingSystem;


   // private LinkedHashMap<String,String> countryOptions;

    public Student() {
//        countryOptions=new LinkedHashMap<String, String>();
//
//        countryOptions.put("SVK","Slovakia");
//        countryOptions.put("CZ","Czechia");
//        countryOptions.put("GER","Germany");
//        countryOptions.put("USA","USA");


    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getFavoriteLanguage() {
        return favoriteLanguage;
    }

    public void setFavoriteLanguage(String favoriteLanguage) {
        this.favoriteLanguage = favoriteLanguage;
    }

    //    public LinkedHashMap<String, String> getCountryOptions() {
//        return countryOptions;
//    }


    public String getOperatingSystem() {
        return operatingSystem;
    }

    public void setOperatingSystem(String operatingSystem) {
        this.operatingSystem = operatingSystem;
    }
}
