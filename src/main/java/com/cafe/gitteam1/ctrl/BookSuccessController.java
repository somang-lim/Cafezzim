package com.cafe.gitteam1.ctrl;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.reserve.ReserveService;
import com.cafe.gitteam1.reserve.ReserveVo;

@RestController
public class BookSuccessController {
	@Autowired
	ReserveService service;

	
	PrintWriter out;
	boolean b = false;


	
	@RequestMapping(value="booksuccess", method= {RequestMethod.POST})
	public ModelAndView booksuccess(ReserveVo vo) {
		ModelAndView mv = new ModelAndView();
		b=service.reserveResult(vo);
		mv.setViewName("book/bookSuccess");
		return mv;
	}
	
}
