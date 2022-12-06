package com.shop.service;

import com.shop.dto.CartDTO;

public interface CartService {
	/* 장바구니 추가 */
	public int addCart(CartDTO cartDto);
}
