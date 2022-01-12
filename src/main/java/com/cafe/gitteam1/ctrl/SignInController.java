package com.cafe.gitteam1.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.member.FindUtil;
import com.cafe.gitteam1.member.MailUtil;
import com.cafe.gitteam1.member.MemberService;
import com.cafe.gitteam1.member.MemberVo;

@RestController
public class SignInController {
	
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
			mv.setViewName("member/signIn");
			mv.addObject("message", "failure");
		}
		return mv;
	}
	
	@RequestMapping("searchId")
	public ModelAndView searchId() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/search_id");
		return mv;
	}
	
	@RequestMapping("searchIdCheck")
	public ModelAndView searchIdCheck(@ModelAttribute MemberVo vo) {
		String member_id = service.searchId(vo);
		ModelAndView mv = new ModelAndView();
		
		if(member_id != null) {
			mv.setViewName("member/search_id_check");
			mv.addObject("member_id", member_id);
		} else {
			mv.setViewName("member/search_id");
			mv.addObject("message", "failure");
		}
		return mv;
	}
	
	@RequestMapping("searchPw")
	public ModelAndView searchPw() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/search_pw");
		return mv;
	}
	
	
	@RequestMapping(value = "/searchPwCheck", method = RequestMethod.POST)
	public void searchPwCheck() throws Exception{
		
	}
	
	@RequestMapping(value="/sendTempPw", method=RequestMethod.POST)
	public String searchPwCheck(MemberVo vo, String member_id, String member_email, Model model) {
		String notice = "";
		try {
			boolean isPwCheck = service.searchPw(vo);
			if(isPwCheck) {
				String newPw = FindUtil.getNewPwd();
				boolean isChangePw = service.changePw(newPw, member_id);
				
				if(isChangePw) {
					String subject = "[CafeZzim] 임시 비밀번호 발급 안내";
					
					String message = "";
					message += "<div align='left'>";
					message += "<h3>";
					message += vo.getMember_name() + "님의 임시 비밀번호입니다.";
					message += "<br>로그인 후 비밀번호를 변경하시기 바랍니다.</h3>";
					message += "<p>임시 비밀번호 : ";
					message += newPw + "</p></div>"; // vo.getPassword()는 null 값이 떨어짐 -> 이유는 모름 
					
					MailUtil.sendMail(member_email, subject, message);
					notice = "임시 비밀번호가 발급되었습니다.";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return notice;
	}
	
	@RequestMapping("signOut")
	public ModelAndView signOut (HttpSession session, ModelAndView mv) {
		
		service.signOut(session);
		mv.setViewName("redirect:/");
		return mv;
	}
}