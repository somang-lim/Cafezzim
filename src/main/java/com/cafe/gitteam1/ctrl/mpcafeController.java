package com.cafe.gitteam1.ctrl;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.mypage_cafe.dayoffVo;
import com.cafe.gitteam1.mypage_cafe.mpcafeService;
import com.cafe.gitteam1.mypage_cafe.mpcafeVo;
import com.cafe.gitteam1.mypage_cafe.mpcafe_listVo;

@RestController
public class mpcafeController {
	
	@Autowired
	private mpcafeService service;
	
	PrintWriter out;
	mpcafeVo vo = null;
	mpcafe_listVo lvo = null;
	dayoffVo dvo = null;
	String findStr = "";
	String cafe_id = "";
	boolean b = false;
	boolean b1 = false;
	
	@RequestMapping(value="/cafemanage", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView cafemanage(String findStr) {
		ModelAndView mv = new ModelAndView();
		List<mpcafeVo> list = service.search(findStr);
		
		mv.addObject("list", list);
		mv.setViewName("/mypage_cafe/cafemanage");
		
		return mv;
	}
	
	@RequestMapping(value="/cafeupdate", method=RequestMethod.GET)
	public ModelAndView cafeupdate(@RequestParam String cafe_id) throws Exception{
		vo = service.view(cafe_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);

		mv.setViewName("mypage_cafe/cafeupdate");
		return mv;
	}
	
	@RequestMapping("cafeupdateSave")
	public ModelAndView cafeupdateSave(mpcafeVo vo, mpcafe_listVo lvo, HttpServletResponse resp) {
		ModelAndView mv = new ModelAndView();
		
		vo.setScnList(Arrays.asList(vo.getSearch_name()));
		vo.setScnidList(Arrays.asList(vo.getScname_id()));
		
		b = service.modify(vo);
		String msg = "";
			if(b) {
				msg="카페정보 수정이 완료되었습니다.";
			}else {
				msg="카페정보 수정중 오류가 발생했습니다. 다시 시도해주세요";
			}
			mv.addObject("vo", vo);
			mv.addObject("msg", msg);
			mv.setViewName("mypage_cafe/mpcafe_result");
			return mv;
	}
	
	@RequestMapping(value="/dayOff", method= RequestMethod.GET)
	public ModelAndView dayOff(@RequestParam String cafe_id) throws Exception{
		ModelAndView mv = new ModelAndView();
		mpcafeVo vo = new mpcafeVo();
		vo = service.dayoffSelect(cafe_id);
		mv.addObject("vo", vo);	
		
		mv.setViewName("mypage_cafe/dayOff");			
		return mv;
	}
	
	@RequestMapping(value = "/deleteOff", method = RequestMethod.GET)
	public ModelAndView deleteOff(@RequestParam(value="off_id") String off_id, @RequestParam(value="cafe_id") String cafe_id) throws Exception {
		b = service.deleteOff(off_id);
		ModelAndView mv = new ModelAndView();
		mpcafeVo vo = new mpcafeVo();
		vo = service.dayoffSelect(cafe_id);
		mv.addObject("vo", vo);
		mv.setViewName("mypage_cafe/dayOff");
		return mv;
	}
	
	
	@RequestMapping(value="dayOffSave", method= RequestMethod.POST)
	public ModelAndView dayOffSave(dayoffVo dvo, HttpServletResponse resp) {
		ModelAndView mv = new ModelAndView();
		b = service.insertOff(dvo);
		String msg = "";
		if(b) {
			msg="영업일 관리가 성공적으로 완료되었습니다.";
		}else {
			msg="영업일 관리중 오류가 발생했습니다. 다시 시도해주세요";
		}
		mv.addObject("vo", vo);
		mv.addObject("msg", msg);
		mv.setViewName("mypage_cafe/dayoff_result");
		return mv;

	}
		
}












