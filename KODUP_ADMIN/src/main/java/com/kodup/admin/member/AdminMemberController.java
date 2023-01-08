package com.kodup.admin.member;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminMemberController {

	@RequestMapping("jsp/admin_member_list")
	public ModelAndView admin_member_list() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_member_list");
		return mv;
	}
	@RequestMapping("jsp/admin_member_list_update")
	public ModelAndView admin_member_list_update() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_member_list_update");
		return mv;
	}
	
	@RequestMapping("jsp/admin_ban")
	public ModelAndView admin_ban() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_ban");
		return mv;
	}
	
}