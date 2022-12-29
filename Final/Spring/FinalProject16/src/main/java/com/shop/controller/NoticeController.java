package com.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.dto.Criteria;
import com.shop.dto.PageMakerDTO;
import com.shop.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
   
   private static final Logger log = LoggerFactory.getLogger(NoticeController.class);

   @Autowired
   NoticeService service;

   @RequestMapping("/write")
   public String writeForm(HttpServletRequest req) {
      return "/notice/writeForm";
   }

   @RequestMapping("/writing")
   public String write(HttpServletRequest req, Model model) {
      String tit = req.getParameter("noTitle");
      String con = req.getParameter("noContent");
      String wri = req.getParameter("noWriter");

      System.out.println("아이디 값은" + req.getParameter("noNum"));
      Map<String, String> map = new HashMap<String, String>();
      map.put("noTitle", tit);
      map.put("noContent", con);
      map.put("noWriter", wri);
      int res = service.noticeWriteDao(map);
      System.out.println("noWrite:" + res);
      return "redirect:/notice/list1";
   }

   @RequestMapping("/update")
   public String update(HttpServletRequest req, Model model) {

      String noNum = req.getParameter("noNum");
      String tit = req.getParameter("noTitle");
      String con = req.getParameter("noContent");
      String wri = req.getParameter("noWriter");
      Map<String, String> map = new HashMap<String, String>();
      map.put("noNum", noNum);
      map.put("noTitle", tit);
      map.put("noContent", con);
      map.put("noWriter", wri);
      System.out.println("업데이트 값 보기");

      System.out.println("noNum는" + noNum);
      System.out.println("noTitle는" + tit);
      System.out.println("noContent는" + con);
      System.out.println("noWriter는" + wri);

      int res = service.noticeUpdateDao(map);

      System.out.println("update:" + res);
      return "redirect:/notice/list1";
   }

   @RequestMapping("/updateView")
   public String updateView(HttpServletRequest req, Model model) {
      String noNum = req.getParameter("noNum");
      model.addAttribute("dto", service.noticeViewDao(noNum)); // dto설정 - dao의 viewDao에 uId를 넣음
      return "/notice/updateForm"; // update.jsp로 이동
   }

   @RequestMapping("/delete")
   public String delete(HttpServletRequest req, Model model) {
      int res = service.noticeDeleteDao(req.getParameter("noNum"));
      System.out.println("delete:" + res);
      return "redirect:/notice/list1";
   }

   @RequestMapping("/view")
   public String detailView(HttpServletRequest req, Model model) {
      
      String noNum = idk;
      System.out.println("view 아이디는" + noNum);
      model.addAttribute("dto", service.noticeViewDao(noNum));
      return "/notice/view";
   }
   
   String idk;
   
   @RequestMapping("/view2")
   public String visitCount(HttpServletRequest req, Model model) {
      String noNum = req.getParameter("noNum");
      idk = noNum;
      System.out.println();
      System.out.println("view2 id는" + noNum);
      model.addAttribute("dto", service.noticeVisitCount(noNum));
      return "redirect:/notice/view";
   }
   
   @GetMapping("list1")
    public String boardListGET(Model model, Criteria cri) {
        log.info("boardListGET");
        model.addAttribute("list", service.noticeGetListPaging(cri));
        
        int total = service.goodGetTotal(cri);
        
        PageMakerDTO pageMaker = new PageMakerDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMaker);
        
        return "/notice/noticeList";
 }

}