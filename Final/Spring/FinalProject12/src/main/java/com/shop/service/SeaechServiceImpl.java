package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.SearchDAO;
import com.shop.dto.Criteria;
import com.shop.dto.StoreDTO;

@Service
public class SeaechServiceImpl implements SeaechService {

	@Autowired
	private SearchDAO sdao;

	@Override
	public List<StoreDTO> getStoreList(Criteria cri) {
		return sdao.getStoreList(cri);
	}

	@Override
	public int StoreGetTotal(Criteria cri) {
		return sdao.StoreGetTotal(cri);
	}
	
	

}
