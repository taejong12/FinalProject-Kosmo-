package com.shop.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Person {

	@RequestMapping("/person")
	@ResponseBody
	public Map<String,Object> getPerson() {
	Map<String,Object> map = new HashMap<>();
	map.put("id","kim9");
	map.put("name","김구");
	map.put("address","마포구 공덕동");
	map.put("salary","10000");
	return map;
	}
	
}
