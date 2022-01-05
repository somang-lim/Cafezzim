package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LoginController {
	
	@RequestMapping("/signIn")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/signIn");
		return mv;
	}
	
	@RequestMapping("/searchId")
	public ModelAndView searchId() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/searchId");
		return mv;
	}
	
	@RequestMapping("/searchPw")
	public ModelAndView searchPw() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/searchPw");
		return mv;
	}
	
	@RequestMapping("/modal")
	public ModelAndView modal() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/modal");
		return mv;
	}
}
