package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.NewsDAO;
import com.shop.dto.Criteria;
import com.shop.dto.NewsDTO;

@Service
public class NewsServiceImpl implements NewsService{

	@Autowired
	NewsDAO dao;
	
	@Override
	public List<NewsDTO> list() {
		return dao.listDao();
	}

	@Override
	public NewsDTO view(String num) {
		return dao.viewDao(num);
	}

	@Override
	public int count() {
		return dao.postCount();
	}

	@Override
	public List<NewsDTO> goodGetList(Criteria cri) {
		return dao.goodGetlist(cri);
	}

	@Override
	public int goodGetTotal(Criteria cri) {
		return dao.goodGetTotal(cri);
	}


}
