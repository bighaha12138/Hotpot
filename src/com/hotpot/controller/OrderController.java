package com.hotpot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotpot.model.Order;
import com.hotpot.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@RequestMapping("/addOrder.do")
	public ModelAndView addOrder(Order order){
		ModelAndView mv = new ModelAndView();
		System.out.println(order);
		if (orderService.addOrder(order)) {
			mv.setViewName("FrontService");
		}
		return mv;
	}
	
}
