package com.shop.dao;

import java.util.List;
import java.util.Map;

import com.shop.dto.JoinDTO;

public interface UserDAO {
	void join(JoinDTO  join);
	int overlapCheck(String value, String valueType);
	void modifyInfo(Map<String, Object> map);
	public List<String> findId(String email);
	public String emailCheck(Map<String, Object> map);
	public String phoneCheck(Map<String, Object> map);
	int out(String username);
}


