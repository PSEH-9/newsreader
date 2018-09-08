package com.deejay.sapient.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class NewsReaderController {

    @RequestMapping("/")
    public String index() {
        return "Hello!";
    }

}