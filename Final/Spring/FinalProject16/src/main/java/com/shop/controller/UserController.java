package com.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.JoinDTO;
import com.shop.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;

	@GetMapping("/myPage")
	public String myPage() {
		return "user/myPage";
	}
	
	@GetMapping("/login")
	public String login(HttpServletRequest request, HttpSession session) {
		String referer = (String) request.getHeader("referer");
		session.setAttribute("referer", referer);
		return "user/login";
	}
	
	@GetMapping("/join")
	public String join() {
	    return "user/join";
	}
	
	@PostMapping("/join")
	public String joinProc(@Valid JoinDTO join, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			List<FieldError> list = bindingResult.getFieldErrors();
			Map<String, String> errorMsg = new HashMap<>();
			for(int i=0;i<list.size();i++) {
				String field = list.get(i).getField(); 
				String message = list.get(i).getDefaultMessage(); 
				errorMsg.put(field, message);
			}
			model.addAttribute("errorMsg", errorMsg);
			return "user/join";
		}
		String encPwd = pwdEncoder.encode(join.getPassword());
		join.setPassword(encPwd);
		userService.join(join);
		
		return "redirect:/login";
	}
	
	@GetMapping("/user/myInfo")
	public String myInfo() {
		return "user/myInfo";
	}
	
	@GetMapping("/user/out/{username}")
	public String out(@PathVariable("username") String username) {
		
		userService.out(username);
		
		return "redirect:/logout";
	}
	
	@ResponseBody
	@GetMapping("/overlapCheck")
	public int overlapCheck(String value, String valueType) {
//		value = ??????????????? ???
//		valueType = username, nickname
		System.out.println(value);
		System.out.println(valueType);
		int count = userService.overlapCheck(value, valueType);
		
		System.out.println(count);
		return count;
	}


}