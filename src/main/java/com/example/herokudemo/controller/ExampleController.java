package com.example.herokudemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
public class ExampleController {

    @GetMapping
    public String exampleMethod(@RequestParam(value = "name", required = false) String name) {
        return Optional.ofNullable(name)
                .map(x -> "Hello, " + name)
                .orElse("MY APPLICATION WORKS!!!!");
    }
}
