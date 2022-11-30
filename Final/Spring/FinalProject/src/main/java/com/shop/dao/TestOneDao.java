package com.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.shop.dto.TestOneDto;


@Mapper
public interface TestOneDao {
	public List<TestOneDto> listDao(); // 게시물 전체보기
	public TestOneDto viewDao(String alNum); // 게시물 보기
	
	// public int writeDao(String writer, String title, String content); // 게시물작성
	public int writeDao(Map<String,String> map); // 게시물작성
	
	// public int deleteDao(String id); // 게시물 삭제
	public int deleteDao(@Param("_alNum") String alNum); // 게시물 삭제
	
	public int postCount(); // 게시물 전체 수
	
	public int updateDao(Map<String, String> umap);
	
	public List<TestOneDto> getAuthItemList(String[] chkArray, String[] chkDanmat, String[] chkFlSinmat, 
			String[] chkFlSsunmat, String[] chkFlBody, String[] chkFlTansan, 
			String[] chkAlAbv, String[] chkAlAbv10, String[] chkAlAbv20, String[] chkAlAbv30,
			String[] chkAlPrice0, String[] chkAlPrice1, String[] chkAlPrice3, String[] chkAlPrice5, String[] chkAlPrice10);
	
	

	
	
		
	
	
}


