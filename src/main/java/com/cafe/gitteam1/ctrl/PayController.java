package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PayController {
	@RequestMapping("/booking")
	public ModelAndView booking() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay/booking");
		return mv;
	}
	
	@RequestMapping("/order")
	public ModelAndView order() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay/order");
		return mv;
	}
	
	
	
}
