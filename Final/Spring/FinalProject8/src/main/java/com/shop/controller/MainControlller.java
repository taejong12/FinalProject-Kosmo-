package com.shop.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dao.HomeDAO;
import com.shop.service.HomeService;



@Controller
public class MainControlller {
	
	@Autowired
	HomeService service;
	
	@RequestMapping("/")
	public String main() {
		return "/authAdult";
	}
	
	@RequestMapping("/inst")
	public String inst() {
		return "/instructional";
	}

	
	@GetMapping("/home")
	public String test(Model model, HttpServletRequest request) {
		if (request.getHeader("REFERER") == null) {
			return "/authAdult";
		}else {
			model.addAttribute("list",service. HomeViewDAO() );
			System.out.println("test");
			return "home";
		}
	}
	
	//세션, 쿠키에 우편번호, 주소 저장
	@ResponseBody
	@PostMapping("/addressModify")
	public void addressModify(String address1, String address2, HttpServletResponse response, HttpSession session)
			throws UnsupportedEncodingException {
//		address1 = 우편번호
//		address2 = 주소
 
		System.out.println("address1 =" + address1);
		System.out.println("address2 =" + address2);
 
		String address = "{\"address1\" : \"" + address1 + "\",\"address2\" : \"" + address2 + "\"}"; 
		
		// 쿠키에 JSON으로 저장 - 문자열 공백이나 특수문자들어가면 에러가 나니까 인코딩.
		Cookie cookie = new Cookie("BMaddress", URLEncoder.encode(address, "UTF-8"));
 
		int age = 60 * 60 * 24 * 7; // 일주일
		cookie.setMaxAge(age);
 
		response.addCookie(cookie);
 
		// 세션에 map으로 저장
		Map<String, String> addMap = new HashMap<>();
		addMap.put("address1", address1);
		addMap.put("address2", address2);
		session.setMaxInactiveInterval(3600 * 3); // 3시간
		session.setAttribute("BMaddress", addMap);
	}
	
	//어드민 로그인하면 리액트페이지로 보냄
	@RequestMapping("/admin/welcome")
	public void adminReact(HttpServletResponse response) throws IOException {
		System.out.println("admin");
		response.sendRedirect("http://localhost:3000");
	}
	

}
