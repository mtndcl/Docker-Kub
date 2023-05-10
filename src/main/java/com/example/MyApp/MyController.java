package com.example.MyApp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class MyController {

    @GetMapping("message")
    public Object getResult(){
        return  new String("OS name : " + System.getProperty("os.name"));
    }
}
