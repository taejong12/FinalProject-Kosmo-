package com.shop.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterPageMakeDTO;
import com.shop.dto.FilterSearchDTO;
import com.shop.service.FilterSearchService;

@Controller
public class FilterSearchController {
		
	
	@Autowired
	private FilterSearchService service;
	
	// 검색 페이지 접속
	@RequestMapping("/store/search")
	public String userlist(Model model, FilterCriteriaDTO cri) throws Exception {
//		
//		// 게시물 목록
//		model.addAttribute("list", service.getListPaging(cri));
//	
//		// 페이지 이동 인터페이스 데이터
//		int total = service.getTotal(cri);
//	        
//        FilterPageMakeDTO pageMaker = new FilterPageMakeDTO(cri, total);
//        
//        model.addAttribute("pageMaker", pageMaker);

		
	return "/FilterSearch/list";
	}
	
	
	
	// total
	@RequestMapping(value = "/search/total", method=RequestMethod.GET)
	public ResponseEntity<Integer> total(){
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	
	// 보낸 메세지 리스트
	@RequestMapping(value = "/store/search/{pageNum}/{amount}", method=RequestMethod.GET)
	public ResponseEntity<ArrayList<FilterSearchDTO>> filterSearch(@PathVariable int pageNum, @PathVariable int amount){
		System.out.println(pageNum);
		System.out.println(amount);
		
		return new ResponseEntity<>(service.filterSearch(pageNum, amount),HttpStatus.OK);
	}
	
	
	@RequestMapping("/store/chk_value")
	public @ResponseBody Map<String, Object> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, FilterCriteriaDTO cri) {
//		System.out.println(Arrays.toString(chkArray));
//		System.out.println(Arrays.toString(chkDanmat));
//		System.out.println(Arrays.toString(chkFlSinmat));
//		System.out.println(Arrays.toString(chkFlSsunmat));
//		System.out.println(Arrays.toString(chkFlBody));
//		System.out.println(Arrays.toString(chkFlTansan));
//		System.out.println(Arrays.toString(chkAlAbv));
//		System.out.println(Arrays.toString(chkAlPrice));
	
		System.out.println("======================="+cri);
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		List<FilterSearchDTO> result = service.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, 
				chkFlSsunmat, chkFlBody, chkFlTansan, 
				chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1, cri);
		
		// 페이지 이동 인터페이스 데이터
				int total = service.getTotal(cri);
			        
		        FilterPageMakeDTO pageMaker = new FilterPageMakeDTO(cri, total);
		        
		        map.put("result", result);
		        map.put("pageMaker", pageMaker);
		        
		
		return map;
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
