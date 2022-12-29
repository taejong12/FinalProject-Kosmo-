package com.shop.service;

import java.util.List;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;


public interface FilterSearchService {

//	public List<FilterSearchDTO> getBoardList();
	
	 /* 게시판 목록(페이징 적용) */
    public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri);
    
    /* 게시판 총 갯수 */
    public int getTotal();
    
}