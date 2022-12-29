package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;


@Mapper
public interface FilterSearchDAO {
	
	 /* 상품 리스트 */
//	public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri);
		
	/* 게시판 총 갯수 */
    public int getTotal(FilterCriteriaDTO cri);

	
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, FilterCriteriaDTO cri);
	
//	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
//			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
//			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1);
	

}


