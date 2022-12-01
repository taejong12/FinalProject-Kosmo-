package com.shop.service;

import java.util.List;
import java.util.Map;

import com.shop.dto.TestOneDto;




public interface TestOneService {
	// 게시판 전체
	public List<TestOneDto> testOneList();
	
	public List<TestOneDto> testOneView(String alNum);
//	public int write(Map<String, String> map);
//	public int delete(String alNum);
//	public int postCount();
//	public int update(Map<String, String> umap);
	
	// 검색필터링
	public List<TestOneDto> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10);
	
	// 페이징
	public List<TestOneDto> testOneGetlistPaging(TestOneDto cri);
	
	/* 게시판 총 갯수 */
    public int getTotal();
	
//	public List<TestOneDto> getList(TestOneDto searchVO);
//	public int getListCnt(TestOneDto searchVO);
	
	
}