package com.kodup.admin.home;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminHomeController {

	@RequestMapping("jsp/admin_home")
	public ModelAndView admin_total_board() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_home");
		return mv;
	}
}
