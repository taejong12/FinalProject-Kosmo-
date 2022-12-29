package com.shop.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shop.dao.FilterSearchDAO;
import com.shop.dto.FilterSearchDTO;


@Service
public class FilterSearchServiceImp implements FilterSearchService{

	@Autowired
	FilterSearchDAO dao;
	
	
	 /* 게시판 총 갯수 */
	@Override
	public int getTotal(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1,FilterSearchDTO cri) {
		
		return dao.getTotal(chkArray, chkDanmat, chkFlSinmat, chkFlSsunmat, 
				chkFlBody, chkFlTansan, chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1, cri);
	}

	@Override
	public List<FilterSearchDTO> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlPrice,String[] chkAlAbv1, String[] chkAlPrice1, FilterSearchDTO cri) {
//		for(int i=0; i<chkArray.length; i++ ) {
//			System.out.println("service: "+chkArray[i]);
//		}
		
//		System.out.println(cri);
		
		return dao.getAuthItemList(chkArray, chkDanmat, chkFlSinmat, chkFlSsunmat, 
				chkFlBody, chkFlTansan, chkAlAbv, chkAlPrice, chkAlAbv1, chkAlPrice1, cri);
	}
	



	
	
	

}
