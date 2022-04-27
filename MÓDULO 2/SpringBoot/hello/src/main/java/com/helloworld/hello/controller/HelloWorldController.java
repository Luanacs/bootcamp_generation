package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController 
@RequestMapping("/helloworld")
public class HelloWorldController {

	@GetMapping //método para acessar
	public String hello() {
		return "Hello World!";
	}
}
