package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.Criteria;
import com.shop.dto.StoreDTO;

@Mapper
public interface SearchDAO {
	
	//상품검색
	public List<StoreDTO> getStoreList(Criteria cri);
	
	//상품 총 갯수
	public int StoreGetTotal(Criteria cri);
}
