package com.cafe.gitteam1.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.reserve.MyPageBookingListService;
import com.cafe.gitteam1.reserve.MyPageBookingListVo;

@RestController
public class MyPageController {
	MyPageBookingListService service;

	
	@Autowired
	public MyPageController(MyPageBookingListService service) {
		this.service = service;
	}

	@RequestMapping("dayOff")
	public ModelAndView dayOff() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage_cafe/dayOff");
		return mv;
	}
	
	@RequestMapping("/mypageBookingList")
	public ModelAndView booking_list(String id, String nowDate) {
		ModelAndView mv = new ModelAndView();
		
		List<MyPageBookingListVo> list = service.bookingList(id, nowDate);
		mv.addObject("list",list);
		
		mv.setViewName("myPage/bookingList");
		return mv;
	}
	@RequestMapping("/mypagePastBookingList")
	public ModelAndView pastBooking_list(String id, String nowDate) {
		ModelAndView mv = new ModelAndView();
		
		List<MyPageBookingListVo> list = service.pastBookingList(id, nowDate);
		mv.addObject("list",list);
		
		mv.setViewName("myPage/bookingList");
		return mv;
	}
	
	@RequestMapping("/bookingListSearch")
	public ModelAndView booking_listSearch(String id, String findStr) {
		ModelAndView mv = new ModelAndView();
		
		List<MyPageBookingListVo> list = service.bookingListSearch(id, findStr);
		mv.addObject("list",list);
		
		mv.setViewName("myPage/bookingList");
		return mv;
	}
	@RequestMapping("/delClick")
	public ModelAndView delClick(String id, String nowDate, String rid) {
		ModelAndView mv = new ModelAndView();
		service.delClick(rid);
		List<MyPageBookingListVo> list = service.bookingList(id, nowDate);
		
		mv.addObject("list",list);
		mv.setViewName("myPage/bookingList");
		return mv;
	}
}
