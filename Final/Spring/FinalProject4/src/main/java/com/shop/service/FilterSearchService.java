package com.shop.service;

import java.util.List;

import com.shop.dto.CateFilterDTO;
import com.shop.dto.CategoriesDTO;
import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;


public interface FilterSearchService {
	
	 /* 게시판 목록(페이징 적용) */
    public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri);
    
    /* 게시판 총 갯수 */
    public int getTotal(FilterCriteriaDTO cri);

    /* 카테고리 리스트 */
	public List<CategoriesDTO> cateList();

    /* 검색결과 카테고리 필터 정보 */
    public List<CateFilterDTO> getCateInfoList(FilterCriteriaDTO cri);
}