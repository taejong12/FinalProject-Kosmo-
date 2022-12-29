package com.shop.dao;

import java.util.List;

import com.shop.dto.StoreDTO;
import com.shop.pagemodel.Criteria;


public interface StoreDAO {
	public List<StoreDTO> listDAO(String alKind);
	public List<StoreDTO> getListPaging(Criteria cri); /// 게시판 목록 페이징 적용
	public int postCount(); //게시물 전체 수
}
