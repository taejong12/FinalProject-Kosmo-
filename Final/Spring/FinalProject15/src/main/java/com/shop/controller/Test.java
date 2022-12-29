package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class Test {

	@GetMapping("/test/test")
	public String testForm() {
		System.out.println("들어왔다");
		

		return "/test";
	}
	
}
