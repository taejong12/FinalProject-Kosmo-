package com.shop.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.shop.dto.FilterSearchDTO;




public interface FilterSearchService {
	
	 /* 게시판 총 갯수 */
    public int total();

	// 검색필터링
	public List<FilterSearchDTO> getAuthItemList(Map<String, Object> map);

}