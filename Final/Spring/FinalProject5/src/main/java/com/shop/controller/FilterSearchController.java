package com.shop.controller;


import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	@RequestMapping(value="/store/chk_value")
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
		System.out.println("test ================: "+cri);
	
	
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		List<FilterSearchDTO> result = service.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, 
				chkFlSsunmat, chkFlBody, chkFlTansan, 
				chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1, cri);
		
			
				
				// 페이지 이동 인터페이스 데이터
				int total = service.getTotal(cri);
//			        
		        FilterPageMakeDTO pageMaker = new FilterPageMakeDTO(cri, total);
		        
		        map.put("result", result);
		        map.put("pageMaker", pageMaker);
		        
		        
		        
		
		return map;
	}

//	@RequestMapping(value="/store/chk_value")
//	public @ResponseBody Map<String, Object> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
//			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
//			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1 
//			, int pageNum, int amount, FilterCriteriaDTO cri
//			) {
//		System.out.println(Arrays.toString(chkArray));
////		System.out.println(Arrays.toString(chkDanmat));
////		System.out.println(Arrays.toString(chkFlSinmat));
////		System.out.println(Arrays.toString(chkFlSsunmat));
////		System.out.println(Arrays.toString(chkFlBody));
////		System.out.println(Arrays.toString(chkFlTansan));
////		System.out.println(Arrays.toString(chkAlAbv));
////		System.out.println(Arrays.toString(chkAlPrice));
////		System.out.println(pageNum);
////		System.out.println(amount);
//		System.out.println("test : "+cri);
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		
//		
//		List<FilterSearchDTO> result = service.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, 
//				chkFlSsunmat, chkFlBody, chkFlTansan, 
//				chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1);
//		
//		
//		// 페이지 이동 인터페이스 데이터
//				int total = service.getTotal(cri);
//			        
//		        FilterPageMakeDTO pageMaker = new FilterPageMakeDTO(cri, total);
//		        
//		        map.put("result", result);
//		        map.put("pageMaker", pageMaker);
//		        
//		        System.out.println(result);
//		
//		return map;
//	}
//	
//	
//	
//	
	
	
	
	
	
	
	
}
