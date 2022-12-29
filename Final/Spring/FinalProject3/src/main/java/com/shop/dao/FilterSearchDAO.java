package com.shop.dao;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.FilterCriteriaDTO;
import com.shop.dto.FilterSearchDTO;


@Mapper
public interface FilterSearchDAO {
	
//    public List<FilterSearchDTO> getBoardList();

    /* 상품 리스트 */
	public List<FilterSearchDTO> getListPaging(FilterCriteriaDTO cri);
	
	/* 게시판 총 갯수 */
    public int getTotal();
}


