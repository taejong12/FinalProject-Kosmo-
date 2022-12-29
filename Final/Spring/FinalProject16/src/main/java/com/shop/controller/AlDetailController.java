package com.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.dto.AlDetailDTO;
import com.shop.dto.UserDTO;
import com.shop.dto.detailFoodDTO;
import com.shop.service.AlDetailService;
import com.shop.service.ReviewService;

@Controller
public class AlDetailController {
   @Autowired
   AlDetailService service;
   
   
   @Autowired
   ReviewService reservice;
   
   
   @RequestMapping("/alView")
   public String detailView(HttpServletRequest req,Model model, Model model2, Model model3) {
      int alNum = Integer.parseInt(req.getParameter("alNum"));
//      System.out.println(alNum); //정상
      AlDetailDTO aidto = service.detailView(alNum);
      model.addAttribute("alDTO",aidto);
//      System.out.println("========");
   
      detailFoodDTO ddto =service.detailFood();
      model2.addAttribute("fdDTO",ddto);   
//      System.out.println("alDTO는 "+model.getAttribute("alDTO"));   
//      
//      System.out.println("fdDTO는 "+model2.getAttribute("fdDTO"));   
       
      model3.addAttribute("dto" , reservice.ReviewDl(alNum));
      
      System.out.println("dddddd는 "+model3.getAttribute("dto"));   
      System.out.println("dddddd는 "+model3.getAttribute("dto"));   
      return "store/alDetailView";
   }   
}