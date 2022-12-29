package com.shop.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.FilterSearchDAO;
import com.shop.dto.FilterSearchDTO;


@Service
public class FilterSearchServiceImp implements FilterSearchService{

	@Autowired
	FilterSearchDAO dao;
	
	
	  /* 게시물 총 갯수 */
    @Override
    public int total() {
        
        return dao.total();
    }    

	@Override
	public List<FilterSearchDTO> getAuthItemList(Map<String, Object> map) {
	
		return dao.getAuthItemList(map);
	}



	
	
	

}
