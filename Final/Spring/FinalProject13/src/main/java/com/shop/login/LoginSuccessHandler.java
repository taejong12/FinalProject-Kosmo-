package com.shop.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;

import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.shop.utils.AuthenticationUtils;

@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	@Autowired
	AuthenticationUtils autils;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String target = "";
		List<String> authList = autils.getAuthorities();
		System.out.println(authList.toString());
		String role = authList.get(0);
		
		
	
		
		HttpSession session = request.getSession();
		
		String referer = (String) session.getAttribute("referer");
		
		if(role.equals("ROLE_ADMIN")) {
			target = "/admin/welcome";
		}else if(role.equals("ROLE_USER")) {
			if(referer.contains("modify")) {
				target="/home";
			}else {
				target = referer;
			}
			System.out.println(referer);
			System.out.println(target);
			
			
		}
		
		response.sendRedirect(target);
	}
}