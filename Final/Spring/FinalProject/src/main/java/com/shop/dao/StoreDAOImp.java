package com.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dto.StoreDTO;
import com.shop.pagemodel.Criteria;

@Repository
public class StoreDAOImp implements StoreDAO{
	@Autowired
	SqlSession sql;

	@Override
	public List<StoreDTO> listDAO(String alkind) {
		
		return sql.selectList("StoreDAO.listDAO", alkind);
	}

	@Override
	public List<StoreDTO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList("StoreMapper.getListPaging", cri);
	}

	@Override
	public int postCount() {
		return sql.selectOne("StoreMapper.postCount");
	}
	
}
