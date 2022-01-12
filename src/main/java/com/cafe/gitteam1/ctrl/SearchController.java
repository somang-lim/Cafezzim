package com.cafe.gitteam1.ctrl;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SearchController {
	
	@GetMapping("search")
	public ModelAndView search() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("search/searchResult");
		
		return mv;
	}
	
	@GetMapping("view")
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("search/viewDetail");
		
		return mv;
	}
	
	
	@GetMapping("map")
	public ModelAndView map() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("search/searchMap");
		
		return mv;
	}
	

}
