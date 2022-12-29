package com.shop.service;

import java.util.List;

import com.shop.dto.StoreDTO;
import com.shop.pagemodel.Criteria;

public interface StoreService {
	
	public List<StoreDTO> list(String alKind);
}
