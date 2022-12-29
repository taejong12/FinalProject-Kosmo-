package com.shop.service;

import java.util.List;

public interface MailService {
	
	void sendUsernames(String email, List<String> usernames);
	public void sendAuthNum(String email, String authNum);
}
