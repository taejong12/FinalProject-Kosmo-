package com.shop.service;

import java.util.List;

import com.shop.dto.Criteria;
import com.shop.dto.StoreDTO;

public interface SeaechService {
	
	//상품검색
	public List<StoreDTO> getStoreList(Criteria cri);
	
	//상품 총 갯수
	public int StoreGetTotal(Criteria cri);

}
