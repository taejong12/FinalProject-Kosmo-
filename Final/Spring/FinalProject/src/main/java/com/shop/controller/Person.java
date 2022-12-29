package com.shop.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Person {

	@RequestMapping("/person")
	public String person(Model model ) {
		
		
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("id","kim9");
		
		model.addAttribute("list",map);
		
		
		
		return "/person";
	}
	
}
