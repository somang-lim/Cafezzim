package com.cafe.gitteam1.ctrl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.member.MemberService;
import com.cafe.gitteam1.member.MemberVo;

@RestController
public class SignController {
	
	@Autowired
	MemberService service;
	MemberVo vo;
	
	@RequestMapping("signIn")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/signIn");
		return mv;
	}
	
	@RequestMapping("signInCheck")
	public ModelAndView signInCheck(@ModelAttribute MemberVo vo, HttpSession session) {
		boolean isSignIn = service.signInCheck(vo, session);
		ModelAndView mv = new ModelAndView();
		
		if(isSignIn) {
			mv.setViewName("redirect:/");
		} else {
			mv.setViewName("member/signIn1");
			mv.addObject("message", "failure");
		}
		return mv;
	}
	
	@RequestMapping("searchId")
	public ModelAndView searchId() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/searchId");
		return mv;
	}
	
	@RequestMapping("searchPw")
	public ModelAndView searchPw() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/searchPw");
		return mv;
	}
	
	@RequestMapping("signOut")
	public ModelAndView signOut (HttpSession session, ModelAndView mv) {
		service.signOut(session);
		mv.setViewName("redirect:/");
		return mv;
	}
}
