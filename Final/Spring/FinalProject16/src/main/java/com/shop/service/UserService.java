package com.shop.service;

import java.util.List;

import com.shop.dto.JoinDTO;

public interface UserService {
	void join(JoinDTO join);
	int overlapCheck(String value, String valueType);
	void modifyInfo(String username, String valueType, String value);
	public List<String> findId(String email);
	public boolean emailCheck(String username, String email);
	public boolean phoneCheck(String username, String phone);
	public boolean out(String username);
}