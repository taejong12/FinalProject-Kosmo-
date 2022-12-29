package com.shop.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.Criteria;
import com.shop.dto.NewsDTO;

@Mapper
public interface NewsDAO {
	public List<NewsDTO> listDao();				//게시물 전체보기
	public List<NewsDTO> goodGetlist(Criteria cri);
	public int goodGetTotal(Criteria cri);
	public NewsDTO viewDao(String num);			//게시물 보기
	public int postCount();							//게시물 전체 수
}
