package com.shop.service;

import java.util.List;
import java.util.Map;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;




public interface FilterSearchService {
	 /* 게시판 목록(페이징 적용) */
//    public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri);
    
    /* 게시판 총 갯수 */
    public int getTotal(FilterCriteriaDTO cri);

	// 검색필터링
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, FilterCriteriaDTO cri);
	
//	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
//			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
//			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1);
	
	

}