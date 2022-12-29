package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.shop.dto.Criteria;
import com.shop.dto.PageDto;
import com.shop.dto.StoreDTO;
import com.shop.service.SeaechService;

@Controller
public class SearchController {
	@Autowired
	private SeaechService seaechservice;
	
	//상품검색
	@GetMapping("search")
	public String searchStoreGet(Criteria cri, Model model) {
		List<StoreDTO> list = seaechservice.getStoreList(cri);
		if(!list.isEmpty()) {
			model.addAttribute("list",list);
			
		}else {
			model.addAttribute("listcherk","empty");
			return "search";
		}
		
		model.addAttribute("pageMaker", new PageDto(cri, seaechservice.StoreGetTotal(cri)));
		
		return "search";
	}

}
