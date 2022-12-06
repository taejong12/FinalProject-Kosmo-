package com.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.CartDAO;
import com.shop.dto.CartDTO;

@Service
public class CartServiceImp implements CartService{
	
	@Autowired
	CartDAO cartDao ;
	
	@Override
	public int addCart(CartDTO cartDto) {
		CartDTO checkCart = cartDao.checkCart(cartDto);
		//장바구니 데이터 체크
		if(checkCart != null) {
			return 2;
		}
		try {
			return cartDao.addCart(cartDto);
		}catch(Exception e) {
			return 0;
			
		}
	}
	
}
