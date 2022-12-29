package com.shop.service;

import java.util.List;

import com.shop.dto.Criteria;
import com.shop.dto.NewsDTO;

public interface NewsService {
	public List<NewsDTO> list();
	public NewsDTO view(String num);
	public int count();
	
	public List<NewsDTO> goodGetList(Criteria cri);
	
	public int goodGetTotal(Criteria cri);
}
