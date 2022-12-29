package com.shop.service;

import java.util.List;

import com.shop.dto.ReviewDTO;

public interface ReviewService {
   
   public int ReviewWrite(ReviewDTO DTO);

   public List<ReviewDTO> ReviewList();
   
   public ReviewDTO ReviewDetail(String reNum);
   
   
   public List<ReviewDTO> ReviewDl(int alNum);
   
   
   public List<ReviewDTO> MyReview(String userName);

   public int ReviewDelete(int reNum);
   
   public int ReviewEdit(ReviewDTO DTO);

   
}