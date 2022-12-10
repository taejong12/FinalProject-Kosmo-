package com.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.OrderDTO;

@Mapper
public interface OrderDAO {

	public List<OrderDTO> getOrderList(String username);
	public int orderPageDao(Map<String,String> map);
	public int orderInsertDao(Map<String, String> map);
	
}
