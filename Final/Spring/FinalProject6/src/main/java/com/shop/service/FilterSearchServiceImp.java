package com.shop.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.FilterSearchDAO;
import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;


@Service
public class FilterSearchServiceImp implements FilterSearchService{

	@Autowired
	FilterSearchDAO dao;
	
	
	/* 게시판 목록(페이징 적용) */
//	@Override
//	public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri)  {
//	
//		return dao.getListPaging(cri);
//	}

	 /* 게시판 총 갯수 */
	@Override
	public int getTotal(FilterCriteriaDTO cri) {
		
		return dao.getTotal(cri);
	}

	@Override
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, FilterCriteriaDTO cri) {
//		for(int i=0; i<chkArray.length; i++ ) {
//			System.out.println("service: "+chkArray[i]);
//		}
		return dao.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, chkFlSsunmat, 
				chkFlBody, chkFlTansan, chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1, cri);
	}

	@Override
	public ArrayList<FilterSearchDTO> filterSearch(int pageNum, int amount) {
		return dao.filterSearch(pageNum, amount);
	}

	@Override
	public int total() {
		return dao.total();
	}


	
	
	

}
