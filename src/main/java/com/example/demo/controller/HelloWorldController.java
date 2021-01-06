package com.example.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping(value = "/")
    public ResponseEntity<String> helloWorld(){
        return ResponseEntity.status(HttpStatus.OK).body("Hello docker");
    }
}
