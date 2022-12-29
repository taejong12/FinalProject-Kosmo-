package com.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.dao.ReactAlDAO;
import com.shop.dto.AlDetailDTO;

@RequestMapping("/alcohols")
@RestController
@CrossOrigin(origins ="*" , maxAge = 3600)
public class ReactAlController {
	 @Autowired
	    ReactAlDAO dao;
	    
	    @GetMapping
	    public List<AlDetailDTO> alcoholList(){
	        System.out.println(dao.alcoholList());
	        System.out.println("유저리스트 출력 성공");
	        return dao.alcoholList();
	    }
	    
	    @PostMapping
	    void insertAlcohol(@RequestBody AlDetailDTO alcohol) {
	        dao.insertAlcohol(alcohol);
	        System.out.println("유저 DB 저장 성공");
	    }
	    
	    @GetMapping("/{alNum}")
	    public AlDetailDTO fetchAlcoholByAlNum(@PathVariable int alNum) {
	        System.out.println(dao.fetchAlcoholByAlNum(alNum));
	        AlDetailDTO fetchUser = dao.fetchAlcoholByAlNum(alNum);
	        return fetchUser;
	    }
	        
	    @PutMapping("/{alNum}")
	    public void updateAlcohol(@PathVariable int alNum, @RequestBody AlDetailDTO alcohol) {
	        
	    	AlDetailDTO updateAlcohol = alcohol;
	        System.out.println("업데이트 제품 => " + updateAlcohol);
	        
	        updateAlcohol.setAlOpic(alcohol.getAlOpic());
	        updateAlcohol.setAlName(alcohol.getAlName());
	        updateAlcohol.setKiNum(alcohol.getKiNum());
	        updateAlcohol.setAlAbv(alcohol.getAlAbv());
	        updateAlcohol.setAlVolume(alcohol.getAlVolume());
	        updateAlcohol.setAlPrice(alcohol.getAlPrice());
	        updateAlcohol.setAlJaeryo(alcohol.getAlJaeryo());
	        updateAlcohol.setAlStock(alcohol.getAlStock());
	        updateAlcohol.setMaNum(alcohol.getMaNum());
	        updateAlcohol.setAlStatus(alcohol.getAlStatus());
	        
	        dao.updateAlcohol(updateAlcohol); 
	    }
	    
	    @DeleteMapping("/{alNum}")
	    public void deleteAlcohol(@PathVariable int alNum) {
	        dao.deleteAlcohol(alNum);
	        System.out.println("제품 삭제, 성공적");
	    }
}
