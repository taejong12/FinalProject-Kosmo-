package com.shop.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.dto.ReviewDTO;
import com.shop.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;

	@RequestMapping("/reviewData")
	public String reviewData(HttpServletRequest req, Model model) {

		ReviewDTO DTO = new ReviewDTO();

		System.out.println("상품번호=" + req.getParameter("alNum"));
		System.out.println(req.getParameter("alName"));
		System.out.println(req.getParameter("alOpic"));
		DTO.setAlNum(Integer.parseInt(req.getParameter("alNum")));
		DTO.setAlName(req.getParameter("alName"));
		DTO.setAlOpic(req.getParameter("alOpic"));
		DTO.setOrPayDate(req.getParameter("orPayDate"));
		DTO.setUserName(req.getParameter("userName"));
		model.addAttribute("list", DTO);

		return "/review/reviewWrite";
	}

	@RequestMapping("/reviewInsert")
	public String reviewInsert(HttpServletRequest req, Model model) {
		ReviewDTO DTO = new ReviewDTO();

		DTO.setAlNum(Integer.parseInt(req.getParameter("alNum")));
		DTO.setAlName(req.getParameter("alName"));
		DTO.setAlOpic(req.getParameter("alOpic"));
		DTO.setOrPayDate(req.getParameter("orPayDate"));
		DTO.setUserName(req.getParameter("userName"));
		DTO.setStar(Integer.parseInt(req.getParameter("star")));
		DTO.setTitle(req.getParameter("title"));
		DTO.setContent(req.getParameter("content"));

		System.out.println("리뷰 작성하기 데이터: " + DTO);

		int result = service.ReviewWrite(DTO);

//      System.out.println("리뷰 인서트 결과: "+ result);

		return "redirect:/reviewList";
	}

	@RequestMapping("/reviewList")
	public String reviewList(HttpServletRequest req, Model model) {

		model.addAttribute("list", service.ReviewList());

//       System.out.println("리뷰 리스트 출력 : "+model.getAttribute("list"));

		return "/review/reviewList";
	}

	@RequestMapping("/reviewDetail")
	public String reviewDetail(HttpServletRequest req, Model model) {
		String reNum = req.getParameter("reNum");
		System.out.println("리뷰디테일 : " + reNum);
		
		model.addAttribute("dto", service.ReviewDetail(reNum));

		return "/review/reviewDetail";
	}

	@GetMapping("/myReviewList/{userName}")
	public String MyReview(@PathVariable("userName") String userName, HttpServletRequest req, Model model) {
//      System.out.println("userName "+userName);

		model.addAttribute("dto", service.MyReview(userName));
//       System.out.println("마이페이지 리뷰 " +model.getAttribute("dto"));

		return "/review/myReview";
	}

	@RequestMapping("/reviewDelete")
	public String ReviewDelete(HttpServletRequest req, Model model) {
		int reNum = Integer.parseInt(req.getParameter("reNum"));
		String userName = req.getParameter("userName");

		System.out.println("마이페이지 리뷰ㄱ삭제" + Integer.parseInt(req.getParameter("reNum")));
		model.addAttribute("dto", service.ReviewDelete(reNum));

		return "redirect:/myReviewList/" + userName;
	}

	@RequestMapping("/reviewEditView")
	public String reviewEditView(HttpServletRequest req, Model model) {
	String reNum = req.getParameter("reNum");
		
		ReviewDTO DTO = new ReviewDTO();
		System.out.println("후기번호=" + reNum);

		 
		  model.addAttribute("list", service.ReviewDetail(reNum));
		  

			/*
			 * DTO.setAlNum(Integer.parseInt(req.getParameter("alNum")));
			 * DTO.setAlName(req.getParameter("alName"));
			 * DTO.setAlOpic(req.getParameter("alOpic"));
			 * DTO.setOrPayDate(req.getParameter("orPayDate"));
			 * DTO.setUserName(req.getParameter("userName"));
			 * model.addAttribute("list",DTO);
			 */
		 

		return "/review/reviewEdit";
	}
	@RequestMapping("/reviewEdit")
	public String ReviewEdit(HttpServletRequest req, Model model) {

//	   System.out.println(req.getParameter("reNum")+"리뷰 번호와 "+req.getParameter("userName")+" 유저이름");
//	   System.out.println(req.getParameter("reNum")+"리뷰 번호와 "+req.getParameter("userName")+" 유저이름");
		String userName = req.getParameter("userName");
		System.out.println("내요내용"+req.getParameter("content"));
		System.out.println(req.getParameter("title"));
		System.out.println(req.getParameter("star"));
		System.out.println(req.getParameter("reNum"));
		
		String content = req.getParameter("content");
		int star = Integer.parseInt(req.getParameter("star")); 
		String title = req.getParameter("title");
		
		int reNum = Integer.parseInt(req.getParameter("reNum"));
		
		ReviewDTO DTO = new ReviewDTO();
		DTO.setContent(content);
		DTO.setTitle(title);
		DTO.setStar(star);
		DTO.setReNum(reNum);
		service.ReviewEdit(DTO);
		reNum=Integer.parseInt(req.getParameter("reNum"));
				req.getParameter("reNum");
		return "redirect:/myReviewList/" + userName;
	}

}