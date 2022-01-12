package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class mpcafeController {
	
	@RequestMapping("/cafemanage")
	public ModelAndView cafemanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage_cafe/cafemanage");
		return mv;
	}

	@RequestMapping("/cafeupdate")
	public ModelAndView cafeupdate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage_cafe/cafeupdate");
		return mv;
	}

}
