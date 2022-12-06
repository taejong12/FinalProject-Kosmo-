package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.CartDTO;
import com.shop.login.LoginService;
import com.shop.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService service;
	
	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartDTO cartDto,@AuthenticationPrincipal LoginService user) {
		// 로그인 체크
		String username = user.getUser().getUsername();
		if(username == null) {
			return "5";
		}
		
		// 카트 등록
		int result = service.addCart(cartDto);
		
		return result + "";
	}
}
