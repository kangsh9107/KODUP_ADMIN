package com.kodup.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		mv.addObject("mpVo",mpVo);
		mv.addObject("amVo",amVo);
		mv.setViewName("jsp/admin_member_list_update");
		return mv;
	}
	
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
	
}