package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.AlDetailDTO;

@Mapper
public interface ReactAlDAO {
	List<AlDetailDTO> alcoholList();
	AlDetailDTO fetchAlcoholByAlNum(int alNum);
    void updateAlcohol(AlDetailDTO alcohol);
    void insertAlcohol(AlDetailDTO alcohol);
    void deleteAlcohol(int alNum);
}
