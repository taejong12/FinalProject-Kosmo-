package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dao.OrderDAO;


@Service
public class OrderServiceImp implements OrderService {
	
	@Autowired
	private OrderDAO orderDAO;
	
//	@Transactional
//	@Override
//	public long orderPriceCheck(CartList cartList) {
// 
//		System.out.println("cartDetail = " + cartList);
// 
//		List<Cart> cart = cartList.getCart();
//		List<Integer> foodPriceList = orderDAO.foodPriceList(cart);
//		List<Integer> optionPriceList = orderDAO.optionPriceList(cart);
//		int deleveryTip = orderDAO.getDeleveryTip(cartList.getStoreId());
//		System.out.println("foodPriceList = " + foodPriceList);
//		System.out.println("optionPriceList = " + optionPriceList);
//		
//		int sum = 0;
//		
//		for (int i = 0; i < cart.size(); i++) {
//			int foodPrice = foodPriceList.get(i);
//			int amount = cart.get(i).getAmount();
//			int optionPrice = optionPriceList.get(i);
// 
//			sum += (foodPrice + optionPrice) * amount;
//		}
// 
//		return sum + deleveryTip; 
//	}
//	
}


