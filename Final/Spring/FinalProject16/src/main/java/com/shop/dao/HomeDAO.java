package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.HomeDTO;

@Mapper
public interface HomeDAO {
	public List<HomeDTO>  HomeViewDAO();
}
