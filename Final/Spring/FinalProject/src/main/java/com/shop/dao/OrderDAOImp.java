package com.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImp implements OrderDAO {
 
	@Autowired
	private SqlSession sql;
 
//	@Override
//	public int getDeleveryTip(long storeId) {
//		return sql.selectOne("order.getDeleveryTip", storeId);
//	}
// 
//	@Override
//	public List<Integer> foodPriceList(List<Cart> cartList) {
//		return sql.selectList("order.foodPriceList", cartList);
//	}
// 
//	@Override
//	public List<Integer> optionPriceList(List<Cart> cart) {
//		return sql.selectList("order.optionPriceList", cart);
//	}
//}

	
}
