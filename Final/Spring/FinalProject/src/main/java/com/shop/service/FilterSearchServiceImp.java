package com.shop.service;

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
	
	
	@Override
	public List<FilterSearchDTO> testOneList() {
		return dao.testOneListDao();
	}

	@Override
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10) {
//		for(int i=0; i<chkArray.length; i++ ) {
//			System.out.println("service: "+chkArray[i]);
//		}
		return dao.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, chkFlSsunmat, 
				chkFlBody, chkFlTansan, chkAlAbv, chkAlAbv10, chkAlAbv20, chkAlAbv30,
				chkAlPrice0, chkAlPrice1, chkAlPrice3, chkAlPrice5, chkAlPrice10);
	}


	
	
	

}
