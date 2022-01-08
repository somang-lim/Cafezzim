package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyPageController {

	@RequestMapping("dayOff")
	public ModelAndView dayOff() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage_cafe/dayOff");
		return mv;
	}
}
