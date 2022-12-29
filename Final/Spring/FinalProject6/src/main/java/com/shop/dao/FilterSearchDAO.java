package com.shop.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;


@Mapper
public interface FilterSearchDAO {
	public List<FilterSearchDTO> testOneListDao(); // 게시물 전체보기
	
	 /* 상품 리스트 */
//	public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri);
		
	/* 게시판 총 갯수 */
    public int getTotal(FilterCriteriaDTO cri);

    // 리스트를 위한 구현
 	public ArrayList<FilterSearchDTO> filterSearch(int pageNum, int amount);	
 	
 	// total을 위한 DB설계
 	public int total();
    
	
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, FilterCriteriaDTO cri);
	

}


