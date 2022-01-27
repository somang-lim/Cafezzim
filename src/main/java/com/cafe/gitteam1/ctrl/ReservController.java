package com.cafe.gitteam1.ctrl;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.search.MenuVo;
import com.cafe.gitteam1.search.ReservInfoVo;
import com.cafe.gitteam1.search.ReviewVo;
import com.cafe.gitteam1.search.SearchService;

@RestController
public class ReservController {
	
SearchService service;
	public static String uploadPath = "/home/hosting_users/gitteam1/tomcat/webapps/upload/";
	//public static String uploadPath = "C:\\Users\\KIM Seong Kyeom\\eclipse-workspace\\gitteam1\\src\\main\\webapp\\upload\\";
	
	@Autowired
	public ReservController(SearchService service) {
		this.service = service;
	}

	@RequestMapping("/reserv_info")
	public ModelAndView reservInfo(String id) {
		ModelAndView mv = new ModelAndView();
		ReservInfoVo vo = service.viewReserv(id);
		List<MenuVo> menu = service.viewReservMenu(id);
		
		mv.addObject("vo",vo);
		mv.addObject("menu",menu);
		
		mv.setViewName("myPage/reserv_info");
		return mv;
	}
	
	@RequestMapping("/review")
	public ModelAndView review(String rid) {
		ModelAndView mv = new ModelAndView();
		ReservInfoVo vo = service.viewReserv(rid);
		List<MenuVo> menu = service.viewReservMenu(rid);
		
		mv.addObject("vo",vo);
		mv.addObject("menu",menu);
		
		mv.setViewName("myPage/review");
		return mv;
	}
	
	@RequestMapping(value="/writeReview",method=RequestMethod.POST)
	public ModelAndView writeReview(ReviewVo vo, @RequestParam("file") MultipartFile file) {
		ModelAndView mv = new ModelAndView();
		String msg = "";
		UUID uuid = null;
		boolean b = false;
		
		try {
			if(!file.getOriginalFilename().isEmpty()) {
				File targetFile = new File(uploadPath + file.getOriginalFilename());
				file.transferTo(targetFile);
				uuid = UUID.randomUUID();
				String temp = uuid.toString() + "-" + file.getOriginalFilename();
				File reName = new File(uploadPath + temp);
				targetFile.renameTo(reName);
				
				vo.setPhoto(temp);
				
				
				b = service.insertReview(vo);
				if(b) {
					msg = "자료가 정상적으로 입력되었습니다.";
				} else {
					msg = "자료 입력중 오류가 발생했습니다.";
				}
				
			}
			mv.addObject("msg", msg);
			mv.setViewName("myPage/reviewResult");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
}
