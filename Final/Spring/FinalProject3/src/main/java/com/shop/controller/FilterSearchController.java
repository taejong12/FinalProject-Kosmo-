package com.shop.controller;




import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterPageMakeDTO;
import com.shop.dto.FilterSearchDTO;
import com.shop.service.FilterSearchService;

@Controller
public class FilterSearchController {
		
	@Autowired
	private FilterSearchService service;
	
	@GetMapping("/store/search")
	public String root() {
		return "/FilterSearch/list";
	}
	
	@GetMapping(value="/store/list")
	public @ResponseBody Map<String, Object> getBoardList(Model model, FilterCriteriaDTO cri) {
		
		List<FilterSearchDTO> boardList = service.getListPaging(cri);
		
		int total = service.getTotal();
		
		FilterPageMakeDTO pageMake = new FilterPageMakeDTO(cri, total);
			
		Map<String, Object> map = new HashMap<>();
		map.put("boardList", boardList);
		map.put("pageMaker", pageMake);

		return map; 
	}
	
//	@GetMapping("/store/page")
//	public @ResponseBody int page(Model model) {
//		
//		int page = service.getTotal();
//		
//		return page; 
//	}
	
	
}

	
	
	
	
	
	
	
	
	
