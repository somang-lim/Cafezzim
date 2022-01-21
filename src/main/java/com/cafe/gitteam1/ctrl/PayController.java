package com.cafe.gitteam1.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.reserve.ReserveService;
import com.cafe.gitteam1.search.CafeInfoVo;
import com.cafe.gitteam1.search.MenuVo;

@RestController
public class PayController {
	
	ReserveService service;
	
	@Autowired
	public PayController(ReserveService service) {
		this.service = service;
	}
	
	@RequestMapping("/booking")
	public ModelAndView booking() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay/booking");
		return mv;
	}
	
	@GetMapping("order")
	public ModelAndView order(String id) {
		ModelAndView mv = new ModelAndView();
		List<MenuVo> menu = service.orderMenu(id);
		CafeInfoVo cinfo = service.viewCafe(id);

		mv.addObject("cvo",cinfo);
		mv.addObject("menu",menu);
		mv.setViewName("pay/order");
		return mv;
	}

	
	
}
