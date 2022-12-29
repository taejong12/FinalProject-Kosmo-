package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterPageMakeDTO;
import com.shop.service.FilterSearchService;

@Controller
public class FilterSearchController {
	
	@Autowired
	private FilterSearchService service;
	
	// 검색 페이지 접속
	@GetMapping("/store/search")
	public String boardListGET(Model model, FilterCriteriaDTO cri) throws Exception {
		
		// 게시물 목록
		//model.addAttribute("list", service.getListPaging(cri));
		
		List list = service.getListPaging(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);	// 게시물 존재할 경우
		} else {
			model.addAttribute("listCheck", "empty");	// 게시물 존재하지 않을 경우
			return "/FilterSearch/list";
		}
		
		// 페이지 이동 인터페이스 데이터
		int total = service.getTotal(cri);
	        
        FilterPageMakeDTO pageMaker = new FilterPageMakeDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMaker);
        
        ObjectMapper objm = new ObjectMapper();
        
        List cate = service.cateList();
        
        String cateList = objm.writeValueAsString(cate);
        
        model.addAttribute("cateList", cateList);
        
        String[] typeArr = cri.getType().split("");
		
		for(String s : typeArr) {
			if(s.equals("T")) {
				 model.addAttribute("filter_info", service.getCateInfoList(cri));		
			}
		}
        
        
		return "/FilterSearch/list";
	}
	


	
}

	
	
	
	
	
	
	
	
	
