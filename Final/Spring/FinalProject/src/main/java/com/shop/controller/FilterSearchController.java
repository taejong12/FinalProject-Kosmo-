package com.shop.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.FilterSearchDTO;
import com.shop.service.FilterSearchService;

@Controller
public class FilterSearchController {
		
	@Autowired
	private FilterSearchService service;
	
	@RequestMapping("/store/search")
	public String userlist(Model model) {
		model.addAttribute("list" , service.testOneList());
//		System.out.println(service.list());
//		int total=service.postCount();
//		System.out.println("total count:" + total);
	return "/FilterSearch/list";
	}
	
	
	@RequestMapping("/store/chk_value")
	public @ResponseBody List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10) {
//		System.out.println(Arrays.toString(chkArray));
//		System.out.println(Arrays.toString(chkDanmat));
//		System.out.println(Arrays.toString(chkFlSinmat));
//		System.out.println(Arrays.toString(chkFlSsunmat));
//		System.out.println(Arrays.toString(chkFlBody));
//		System.out.println(Arrays.toString(chkFlTansan));
//		System.out.println(Arrays.toString(chkAlAbv));
//		System.out.println(Arrays.toString(chkAlAbv10));
//		System.out.println(Arrays.toString(chkAlAbv20));
//		System.out.println(Arrays.toString(chkAlAbv30));
//		System.out.println(Arrays.toString(chkAlPrice0));
//		System.out.println(Arrays.toString(chkAlPrice1));
//		System.out.println(Arrays.toString(chkAlPrice3));
//		System.out.println(Arrays.toString(chkAlPrice5));
//		System.out.println(Arrays.toString(chkAlPrice10));
		
		List<FilterSearchDTO> result = service.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, 
				chkFlSsunmat, chkFlBody, chkFlTansan, 
				chkAlAbv, chkAlAbv10, chkAlAbv20, chkAlAbv30,
				chkAlPrice0, chkAlPrice1, chkAlPrice3, chkAlPrice5, chkAlPrice10);
		return result;
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
