package com.shop.service;


import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.FilterSearchDAO;
import com.shop.dto.CateFilterDTO;
import com.shop.dto.CategoriesDTO;
import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;



@Service
public class FilterSearchServiceImp implements FilterSearchService{

	@Autowired
	FilterSearchDAO dao;

	/* 게시판 목록(페이징 적용) */
	@Override
	public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri) {
	
		return dao.getListPaging(cri);
	}

	 /* 게시판 총 갯수 */
	@Override
	public int getTotal(FilterCriteriaDTO cri) {
		
		return dao.getTotal(cri);
	}

	@Override
	public List<CategoriesDTO> cateList() {
		
		return dao.cateList();
	}
	
	

	/* 검색결과 카테고리 필터 정보 */
	@Override
	public List<CateFilterDTO> getCateInfoList(FilterCriteriaDTO cri) {
		
		List<CateFilterDTO> filterInfoList = new ArrayList<CateFilterDTO>();
		
		String[] cateList = dao.getCateList(cri);
		
		String tempCateCode = cri.getCateCode();
		
		for(String cateCode : cateList) {
			cri.setCateCode(cateCode);
			CateFilterDTO filterInfo = dao.getCateInfo(cri);
			filterInfoList.add(filterInfo);
		}
		
		cri.setCateCode(tempCateCode);
		
		
		return filterInfoList;
	}




//	@Override
//	public List<CateFilterDTO> getCateInfoList(FilterCriteriaDTO cri) {
//		
//		List<CateFilterDTO> filterInfoList = new ArrayList<CateFilterDTO>();
//		
//		String[] typeArr = cri.getType().split("");
//		String [] authorArr;
//		
//		for(String type : typeArr) {
//			if(type.equals("A")){
//				authorArr = dao.getAuthorIdList(cri.getKeyword());
//				if(authorArr.length == 0) {
//					return filterInfoList;
//				}
//				cri.setAuthorArr(authorArr);
//			}
//		}
//		
//		String[] cateList = dao.getCateList(cri);
//		
//		String tempCateCode = cri.getCateCode();
//		
//		for(String cateCode : cateList) {
//			cri.setCateCode(cateCode);
//			CateFilterDTO filterInfo = dao.getCateInfo(cri);
//			filterInfoList.add(filterInfo);
//		}
//		
//		cri.setCateCode(tempCateCode);
//		
//		return filterInfoList;
//	}
//

	



}
