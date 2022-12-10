package com.shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dao.OrderDAO;
import com.shop.dto.CartDTO;
import com.shop.dto.OrderDTO;


@Service
public class OrderServiceImp implements OrderService {
	
	@Autowired
	private OrderDAO dao;

	@Override
	public List<OrderDTO> getOrderList(String username) {
		
		return dao.getOrderList(username);
	}
	
	public int orderPage(Map<String,String> map) {
		return dao.orderPageDao(map);
	}

	@Override
	public int orderInsert(Map<String, String> map) {
		return dao.orderInsertDao(map);
	};
	

}


