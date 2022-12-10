package com.shop.service;

import java.util.List;
import java.util.Map;

import com.shop.dto.FilterSearchDTO;




public interface FilterSearchService {
	// 게시판 전체
	public List<FilterSearchDTO> testOneList();

	// 검색필터링
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice);
	
	

	
 
    
	
}