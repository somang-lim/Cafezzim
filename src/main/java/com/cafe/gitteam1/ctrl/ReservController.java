package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ReservController {

	@RequestMapping("/reserv_info")
	public ModelAndView reservInfo() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myPage/reserv_info");
		return mv;
	}
	
	@RequestMapping("/review")
	public ModelAndView review() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myPage/review");
		return mv;
	}
	
}
