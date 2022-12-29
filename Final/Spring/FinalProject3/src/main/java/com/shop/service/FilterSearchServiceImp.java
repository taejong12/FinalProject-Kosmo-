package com.shop.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.FilterSearchDAO;
import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;



@Service
public class FilterSearchServiceImp implements FilterSearchService{

	
	@Autowired
	FilterSearchDAO dao;

//	@Override
//	public List<FilterSearchDTO> getBoardList() {
//		List<FilterSearchDTO> results = dao.getBoardList();
//		return results;
//	}

	@Override
	public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri) {
	
		return dao.getListPaging(cri);
	}

	@Override
	public int getTotal() {
		
		return dao.getTotal();
	}


	



}
