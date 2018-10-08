package com.hotpot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotpot.model.Food;
import com.hotpot.service.FoodService;

@Controller
@RequestMapping("/food")
public class FoodController {
	
	@Autowired
	@Qualifier("foodService")
	private FoodService foodService;

	@RequestMapping("/foodList.do")
	public ModelAndView foodList(Integer tableNum,HttpServletRequest request){
		//String pageNow = request.getParameter("pageNow");
		//int totalCount = foodService.allFoodCount();
		//Page page = null;
		ModelAndView mv = new ModelAndView();
		List<Food> list = foodService.getAllFoods();
		mv.addObject("list",list);
		mv.addObject("tableNum", tableNum);
		//mv.addObject("page",page);
		//ArrayList<Staff> staffList = (ArrayList<Staff>) staffService.getAllStaffInfo();
		//mv.addObject("staffList", staffList);
		mv.setViewName("Order");
		return mv;
	}
}
