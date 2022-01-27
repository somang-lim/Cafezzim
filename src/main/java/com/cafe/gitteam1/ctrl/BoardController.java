package com.cafe.gitteam1.ctrl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.gitteam1.board.BoardService;
import com.cafe.gitteam1.board.NoticePhotoVo;
import com.cafe.gitteam1.board.NoticeVo;
import com.cafe.gitteam1.board.Page;

@RestController
public class BoardController {
	
	public static String uploadPath = "/home/hosting_users/gitteam1/tomcat/webapps/upload/notice/";
	//public static String uploadPath = "/Users/idohyeong/Desktop/Cafezzim-master-server/src/main/webapp/upload/notice/";
	
	@Autowired
	BoardService service;
	
	String msg = "";
	UUID uuid = null;
	
	/* 공지사항 ---------------------------------------------------*/
	@RequestMapping(value="notice", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView notice(Page page) {
		ModelAndView mv = new ModelAndView();
		List<NoticeVo> list = service.notice_search(page);
		page = service.getPage();
		
		mv.addObject("page", page);
		mv.addObject("list", list);
		mv.setViewName("board_notice/notice_list");
		return mv;
	}
	
	@RequestMapping("notice_view")
	public ModelAndView notice_view(String notice_serial, Page page) {
		ModelAndView mv = new ModelAndView();
		NoticeVo vo = service.notice_view(notice_serial);
		
		mv.addObject("vo", vo);
		mv.addObject("page", page);
		mv.setViewName("board_notice/notice_view");
		return mv;
	}
	
	@RequestMapping("notice_insert")
	public ModelAndView notice_insert(Page page) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("board_notice/notice_insert");
		return mv;
	}
	
	// 첨부 파일까지 포함 
	@RequestMapping(value="notice_insert_check", method= {RequestMethod.POST})
	public ModelAndView notice_insert_check(@ModelAttribute NoticeVo vo, @RequestParam("file") List<MultipartFile> file) {
		ModelAndView mv = new ModelAndView();
		boolean isInsertFile = false;
		
		boolean isInsert = service.notice_insert(vo);
		List<NoticePhotoVo> notice_insert_file = new ArrayList<NoticePhotoVo>();
		
		try {
			if(isInsert) {
				// 첨부 파일 multiple
				for(MultipartFile m : file) {
					if(m.getOriginalFilename().equals("")) continue;
				
					// uuid로 이름 변경
					File targetFile = new File(uploadPath + m.getOriginalFilename());
					m.transferTo(targetFile);
					uuid = UUID.randomUUID();
					String temp = uuid.toString() + "-" + m.getOriginalFilename();
					File rename = new File(uploadPath + temp);
					targetFile.renameTo(rename);
					NoticePhotoVo nvo = new NoticePhotoVo();
					
					nvo.setNotice_file(temp);
					int notice_serial = nvo.getNotice_serial();
					
					// auto_increment된 notice_serial 가져오기
					if(notice_serial == 0) {
						notice_serial = service.notice_last_insert_id();
						nvo.setNotice_serial(notice_serial);
						notice_insert_file.add(nvo);
					} else {
						notice_insert_file.add(nvo);
					}
				}

				vo.setNotice_files(notice_insert_file);
				
				isInsertFile = service.notice_insert_photo(vo);
				
				if(isInsertFile) {
					mv.setViewName("redirect:/notice");
				} else {
					mv.setViewName("redirect:/notice_insert");
				}
					
			} else {
				mv.setViewName("redirect:/notice_insert");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("notice_modify")
	public ModelAndView notice_modify(String notice_serial, Page page, NoticeVo vo) {
		ModelAndView mv = new ModelAndView();
		vo = service.notice_view(notice_serial);
		
		mv.addObject("vo", vo);
		mv.addObject("page", page);
		mv.setViewName("board_notice/notice_modify");
		return mv;
	}
	
	@RequestMapping("delete_file")
	@ResponseBody
	public ResponseEntity<String> delete_file(String notice_file) {
		boolean isDelete = service.notice_delete_photo(notice_file);
		
		if(isDelete) {
			File delete_file = new File(uploadPath + notice_file);
			if(delete_file.exists()) delete_file.delete();
		}
		
		return new ResponseEntity<>("delete", HttpStatus.OK);
	}
	
	@RequestMapping(value="notice_modify_check", method= {RequestMethod.POST})
	public ModelAndView notice_modify_check(@ModelAttribute NoticeVo vo, @RequestParam("file") List<MultipartFile> file, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		boolean isInsertFile = false;
		
		boolean isModify = service.notice_modify(vo);
		List<NoticePhotoVo> notice_insert_file = new ArrayList<NoticePhotoVo>();
		
		try {
			if(isModify){
				for(MultipartFile m : file) {
					if(m.getOriginalFilename().equals("")) continue;
					
					File targetFile = new File(uploadPath + m.getOriginalFilename());
					m.transferTo(targetFile);
					uuid = UUID.randomUUID();
					String temp = uuid.toString() + "-" + m.getOriginalFilename();
					File rename = new File(uploadPath + temp);
					targetFile.renameTo(rename);
					NoticePhotoVo nvo = new NoticePhotoVo();
					
					nvo.setNotice_file(temp);
					nvo.setNotice_serial(vo.getNotice_serial());

					
					notice_insert_file.add(nvo);
				}
				
				vo.setNotice_files(notice_insert_file);
				
				isInsertFile = service.notice_insert_photo(vo);
				
				if(isInsertFile) {
					mv.setViewName("redirect:/notice");
				} else {
					mv.setViewName("notice_modify");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("notice_delete")
	public ModelAndView notice_delete(String notice_serial, String notice_file) {
		ModelAndView mv = new ModelAndView();
		NoticeVo vo = new NoticeVo();
		
		boolean isDeleteFile = service.notice_delete_file(notice_serial);
		
		boolean isDelete = false;
		
		try {
			if(isDeleteFile) {
				for(NoticePhotoVo nvo : vo.getNotice_files()) {
					File delete_file = new File(uploadPath + nvo.getNotice_file());
					if(delete_file.exists()) delete_file.delete();
				}
			}
			
			isDelete = service.notice_delete(notice_serial);
			
			if(isDelete) {
				mv.setViewName("redirect:/notice");
			} else {
				mv.setViewName("redirect:/notice_view");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	/* 문의게시판(Q&A) ---------------------------------------------------*/
	@RequestMapping("qa")
	public ModelAndView qa() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board_qa/qa_list");
		return mv;
	}
	
	@RequestMapping("qa_view")
	public ModelAndView qa_view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board_qa/qa_view");
		return mv;
	}
	
	@RequestMapping("qa_insert")
	public ModelAndView qa_insert() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board_qa/qa_insert");
		return mv;
	}
	
	@RequestMapping("qa_modify")
	public ModelAndView qa_modify() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board_qa/qa_modify");
		return mv;
	}
	
	@RequestMapping("qa_repl")
	public ModelAndView qa_repl() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board_qa/qa_repl");
		return mv;
	}
}
