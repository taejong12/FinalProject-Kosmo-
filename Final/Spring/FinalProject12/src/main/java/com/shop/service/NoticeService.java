package com.shop.service;

import java.util.List;
import java.util.Map;

import com.shop.dto.Criteria;
import com.shop.dto.NoticeDTO;


public interface NoticeService {
   public List<NoticeDTO> noticeListDao();
   public NoticeDTO noticeViewDao(String noNum);
   public int noticeWriteDao(Map<String,String> map);
   public int noticeUpdateDao(Map<String,String> map);
   public int noticeDeleteDao(String noNum);
   public int noticeVisitCount(String noNum);
   public int noticePostCount();
   
   public List<NoticeDTO> noticeGetListPaging(Criteria cri);
   
   public int goodGetTotal(Criteria cri);
}