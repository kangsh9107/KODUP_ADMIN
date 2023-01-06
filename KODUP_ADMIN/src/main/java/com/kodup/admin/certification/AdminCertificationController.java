package com.kodup.admin.certification;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminCertificationController {

	@RequestMapping("jsp/admin_corp_certification")
	public ModelAndView admin_member_list() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_corp_certification");
		return mv;
	}
	
	@RequestMapping("jsp/admin_mento_certification")
	public ModelAndView admin_ban() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_mento_certification");
		return mv;
	}
}
