package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.web.servlet.oauth2.client.OAuth2ClientSecurityMarker;
import org.springframework.stereotype.Service;

import com.shop.dao.ReviewDAO;
import com.shop.dto.ReviewDTO;

@Service
public class ReviewServiceImple implements ReviewService {
   
   @Autowired
   ReviewDAO dao;
   
   @Override
   public int ReviewWrite(ReviewDTO DTO) {
      System.out.println("리뷰imple에서 DTO: "+DTO);
      return dao.ReviewWriteDAO(DTO);
   }

   @Override
   public List<ReviewDTO> ReviewList() {
         System.out.println("리뷰imple에서 ReviewList 실행");
      return dao.ReviewListDAO();
   }

   @Override
   public ReviewDTO ReviewDetail(String reNum) {
      
      return dao.ReviewDetailDAO(reNum);
   }

   @Override
   public List<ReviewDTO> ReviewDl(int alNum) {
      return dao.ReviewDlDAO(alNum);
   }

   @Override
   public List<ReviewDTO> MyReview(String userName) {
      System.out.println("서비스임플 유저네임" +userName);
      return dao.MyReviewDAO(userName);
   }

   @Override
   public int ReviewDelete(int reNum) {
      System.out.println("리뷰딜리트 reNum: "+reNum);
      return dao.ReviewDeleteDAO(reNum);
   }

@Override
public int ReviewEdit(ReviewDTO DTO) {
	System.out.println("리뷰업데이트 dto = "+DTO);
	return dao.ReviewEditDao(DTO);
}   
   
   
   
}