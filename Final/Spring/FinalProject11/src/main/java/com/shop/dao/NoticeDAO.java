package com.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.shop.dto.Criteria;
import com.shop.dto.NoticeDTO;

@Mapper
public interface NoticeDAO {
   public List<NoticeDTO> noticeListDao();
   public List<NoticeDTO> noticeGetListPaging(Criteria cri); /// 게시판 목록 페이징 적용
   public int goodGetTotal(Criteria cri);
   public NoticeDTO noticeViewDao(String noNum);
   public int noticeWriteDao(Map<String,String> map);  // 게시물 작성
   public int noticeUpdateDao(Map<String,String> map); // 게시물 수정
   public int noticeDeleteDao(@Param("_noNum") String noNum); // 게시물 삭제
   public int noticeVisitCount(String noNum); //게시물 조회 수
   public int noticePostCount(); //게시물 전체 수
}