package com.efrei.st2dce;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class MyController {

    @GetMapping
    public String getGreetings() {
        return "Hello, from Vanessa MOHAMMEDI, Sabrina MOHAMMEDI, Pablo RATOUIT, Gwendal ROUX, Bryian Kessel KOUAM FOZEU for Devops and Continuous Deployment final project";
    }
}
