package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.HomeDAO;
import com.shop.dto.HomeDTO;

@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	HomeDAO dao;
	
	@Override
	public List<HomeDTO> HomeViewDAO() {
	 List<HomeDTO>list= dao.HomeViewDAO();
	 list.forEach(dto ->{
		 int alnum = dto.getAlNum();
		 String alname = dto.getAlName();
		 int alprice = dto.getAlPrice();
		 System.out.println(alnum);
		 System.out.println("=========================================");
		 System.out.println(alname);
		 System.out.println("=========================================");
		 System.out.println(alprice);
	 });
	 return list;
	}
}
