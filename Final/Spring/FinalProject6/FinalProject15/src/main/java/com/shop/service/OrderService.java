package com.shop.service;

import java.util.List;
import java.util.Map;

import com.shop.dto.CartDTO;
import com.shop.dto.OrderHisDTO;
import com.shop.dto.OrderItemDTO;
import com.shop.dto.OrderListDTO;

public interface OrderService {
//
//	//	장바구니에 담긴 금액과 db의 금액이 같은지 확인
//	long orderPriceCheck(CartList cartList);
	/* 주문 정보 */
	public List<OrderItemDTO> getGoodsInfo(List<OrderItemDTO> orders);
	
	public List<OrderListDTO> getOrderList(String username);
	public int orderPage(Map<String,String> map);
	public int orderInsert(Map<String, String> map);
	public OrderItemDTO orderPage(String username);
	public int insertOneOrderHis(OrderHisDTO orders);
	public int insertOneOrderItemHis(OrderItemDTO orders);
	
	public int insertCartOrderHis(OrderHisDTO orders);
	public int insertCartOrderItemHis(OrderItemDTO orders);
	public int deductStock(OrderItemDTO orders);//술 각각 구매한 수
	public int deleteOrderCart(OrderItemDTO  orders);
}
