package com.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.OrderHisDTO;
import com.shop.dto.OrderItemDTO;
import com.shop.dto.OrderListDTO;

@Mapper
public interface OrderDAO {
	public OrderItemDTO getGoodsInfo(int alNum); //**
	
	public int orderPageDao(Map<String,String> map);
	public int orderInsertDao(Map<String, String> map);
	public OrderItemDTO orderPage(String username);
	
	public int insertOneOrderHis(OrderHisDTO orders);
	
	public int insertCartOrderHis(OrderHisDTO  orders);
	public int insertCartOrderItemHis(OrderItemDTO  orders);
	public int deductStock(OrderItemDTO d);
	public int deleteOrderCart(OrderItemDTO  orders);
	
	//결제내역 페이지
	public List<OrderListDTO> getOrderList(String username);
}
