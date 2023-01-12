package com.kodup.admin.member;

import java.io.Console;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminMemberController {

	@Autowired
	AdminMemberService service;
	
	@RequestMapping("jsp/admin_member_list")
	public ModelAndView select(MemberPageVo mpVo) {
		ModelAndView mv = new ModelAndView();
		List<AdminMemberVo> list = service.select(mpVo);
		mpVo = service.getmpVo();
		
		mv.addObject("mpVo",mpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_member_list");
		return mv;
	}
	@RequestMapping("jsp/admin_member_list_update")
	public ModelAndView admin_member_list_update(MemberPageVo mpVo, AdminMemberVo amVo) {
		ModelAndView mv = new ModelAndView();
		amVo = service.view(mpVo,amVo);
		
		List<AdminMemberVo> doc_list  = service.doc_list5(amVo);
		List<AdminMemberVo> repl_list = service.repl_list5(amVo);
		mv.addObject("mpVo",mpVo);
		mv.addObject("amVo",amVo);
		mv.addObject("doc_list",doc_list);
		mv.addObject("repl_list",repl_list);
		mv.setViewName("jsp/admin_member_list_update");
		return mv;
	}
	
	
	
	/*admin_ban.jsp*/
	@RequestMapping("jsp/admin_ban")
	public ModelAndView admin_ban(MemberPageVo mpVo) {
		ModelAndView mv = new ModelAndView();
		List<AdminMemberVo> list = service.banselect(mpVo);
		mpVo = service.getmpVo();
		
		mv.addObject("mpVo",mpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_ban");
		return mv;
	}
	
	@RequestMapping("jsp/admin_make_ban")
	public ModelAndView admin_make_ban(MemberPageVo mpVo,AdminMemberVo amVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.make_ban(amVo);
		System.out.println(b);
		
		List<AdminMemberVo> list = service.banselect(mpVo);
		mv.addObject("mpVo",mpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_ban");  // refresh 하는법 물어보기
		return mv;
		
	}
	
	@RequestMapping("jsp/admin_make_activity")
	public ModelAndView admin_make_activity(MemberPageVo mpVo,AdminMemberVo amVo) {
		ModelAndView mv = new ModelAndView();
		boolean b = service.make_activity(amVo);
		System.out.println(b);
		
		List<AdminMemberVo> list = service.banselect(mpVo);
		mv.addObject("mpVo",mpVo);
		mv.addObject("list",list);
		mv.setViewName("jsp/admin_ban");  // refresh 하는법 물어보기
		return mv;
		
	}
}