package com.kodup.admin.member;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class AdminMemberController {

	@RequestMapping("/admin_member_list")
	public ModelAndView admin_member_list() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_member_list");
		return mv;
	}
	
	@RequestMapping("/admin_ban")
	public ModelAndView admin_ban() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_ban");
		return mv;
	}
}
