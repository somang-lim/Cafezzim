package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class BookFailController {
	@RequestMapping("bookfail")
	public ModelAndView booksuccess() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("book/bookFail");
		return mv;
	}
}
