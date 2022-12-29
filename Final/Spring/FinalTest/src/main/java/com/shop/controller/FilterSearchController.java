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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.FilterSearchDTO;
import com.shop.dto.PageMakerDTO;
import com.shop.dto.Pager;
import com.shop.pagemodel.Criteria;
import com.shop.service.FilterSearchService;

@Controller
public class FilterSearchController {
		
	private static final Logger log = LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	private FilterSearchService service;
	
	@RequestMapping("/store/search")
	public String userlist(Model model, Criteria cri) {
//		log.info("testOneList");
//		model.addAttribute("list" , service.testOneList());
//		int total = service.getTotal();
//		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
//		model.addAttribute("pageMake", pageMake);
//		System.out.println(service.list());
//		int total=service.postCount();
//		System.out.println("total count:" + total);
	return "/FilterSearch/list";
	}
	
	@RequestMapping(value = "/board_list", method = RequestMethod.GET)
	@ResponseBody //뷰페이지 응답하지 않을것 , 자동으로 객체로 반환
	public Map<String, Object> restBoardList(@RequestParam(defaultValue = "1") int pageNum) {
		
//		REST_BOARD 테이블에 저장된 게시글의 갯수를 검색하여 반환받아 저장
		int totalBoard=service.total();
		
		int pageSize=5;    //  한페이지에 검색되는 게시글의 갯수를 임의로 설정
		
		int blockSize=5;   //  페이지 블럭에 출력될 페이지의 갯수를 임의로 설정
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
//		Service 클래스의 메소드(getRestBoardList가 startRow와 endRow를 받아 Map에 저장)를 호출하기 위해 매개변수에 전달될 Map 객체 
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());  // 요청페이지 시작 번호 
		pagerMap.put("endRow", pager.getEndRow());      // 요청페이지 마지막 번호
		
//		요청처리 메소드의 반환값으로 사용될 Map 객체 생성
//		 => 응답결과를 Map객체의 엔트리(Entry)로 저장하여 반환 - Entry >> JSON(JavaScript 객체)
		Map<String, Object> returnMap = new HashMap<String, Object>();
//		두개의 자바스크립트 객체 , "restBoardList" => 배열객체 / "Pager" => Object객체
		returnMap.put("restBoardList", service.getAuthItemList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;		
	}
	
//	@RequestMapping("/store/chk_value/{pageNum}/{amount}")
//	public ResponseEntity<ArrayList<FilterSearchDTO>> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
//			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
//			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, @PathVariable int pageNum, @PathVariable int amount) {
////		System.out.println(Arrays.toString(chkArray));
////		System.out.println(Arrays.toString(chkDanmat));
////		System.out.println(Arrays.toString(chkFlSinmat));
////		System.out.println(Arrays.toString(chkFlSsunmat));
////		System.out.println(Arrays.toString(chkFlBody));
////		System.out.println(Arrays.toString(chkFlTansan));
////		System.out.println(Arrays.toString(chkAlAbv));
////		System.out.println(Arrays.toString(chkAlPrice));
//
//		
//		
//		return new ResponseEntity<>(service.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, 
//				chkFlSsunmat, chkFlBody, chkFlTansan, 
//				chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1, pageNum, amount), HttpStatus.OK);
//	}

	
	
	
	
	
	
	
	
	
	
	
	
}
