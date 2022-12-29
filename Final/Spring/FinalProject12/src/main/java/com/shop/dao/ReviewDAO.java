package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.dto.ReviewDTO;

@Mapper
public interface ReviewDAO {
   
   public int ReviewWriteDAO(ReviewDTO DTO);

   public List<ReviewDTO> ReviewListDAO();
   
   public ReviewDTO ReviewDetailDAO(String reNum);
   
   public List<ReviewDTO> ReviewDlDAO(int alNum);
   
   public List<ReviewDTO> MyReviewDAO(String usernName);
   
   public int ReviewDeleteDAO(int reNum);
}