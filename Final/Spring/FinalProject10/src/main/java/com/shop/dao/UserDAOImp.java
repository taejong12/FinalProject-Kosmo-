package com.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dto.JoinDTO;

@Repository
public class UserDAOImp implements UserDAO {
 
	@Autowired
	private SqlSession sql;
	
	@Override
	public void join(JoinDTO join) {
		sql.insert("user.join" , join);	
		System.out.println(join.getUsername());
	}
	
	@Override
	public int overlapCheck(String value, String valueType) {
		Map<String, String> map = new HashMap<>();
		map.put("value", value);
		map.put("valueType", valueType);
		return sql.selectOne("user.overlapCheck", map);
	}

	@Override
	public void modifyInfo(Map<String, Object> map) {
		sql.update("user.modifyInfo", map);	
	}
	
	@Override
	public List<String> findId(String email) {
	    return sql.selectList("user.findId", email);
	}
	
	@Override
	public String emailCheck(Map<String, Object> map) {
	    return sql.selectOne("user.emailCheck", map);
	}
	 
	@Override
	public String phoneCheck(Map<String, Object> map) {
	    return sql.selectOne("user.phoneCheck", map);
	}
 
}

