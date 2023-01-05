package com.kodup.admin.totalboard;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class AdminTotalboardController {

	@RequestMapping("/admin_total_board")
	public ModelAndView admin_total_board() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_total_board");
		return mv;
	}
}
