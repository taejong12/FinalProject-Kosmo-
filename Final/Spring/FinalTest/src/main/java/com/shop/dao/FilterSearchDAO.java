package com.shop.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.shop.dto.FilterSearchDTO;


@Mapper
public interface FilterSearchDAO {
	
	 /* 게시판 총 갯수 */
    public int total();
	
	public List<FilterSearchDTO> getAuthItemList(Map<String, Object> map);
	

}


