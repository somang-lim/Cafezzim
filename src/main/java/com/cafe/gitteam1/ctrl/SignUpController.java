package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SignUpController {
	
	@RequestMapping("/signUp")
	public ModelAndView signUp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signUp");
		return mv;
	}
	@RequestMapping("/id_check")
	public ModelAndView id_check() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("id_check");
		return mv;
	}
	@RequestMapping("/mypage_member")
	public ModelAndView mypageModify() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage_member");
		return mv;
	}
	@RequestMapping("/mypage_admin")
	public ModelAndView mypageAdmin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage_admin");
		return mv;
	}
}
