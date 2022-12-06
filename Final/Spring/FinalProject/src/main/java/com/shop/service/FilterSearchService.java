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
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10);
	
	

	
 
    
	
}