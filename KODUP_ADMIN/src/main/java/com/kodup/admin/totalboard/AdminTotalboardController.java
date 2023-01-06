package com.kodup.admin.totalboard;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminTotalboardController {

	@RequestMapping("jsp/admin_total_board")
	public ModelAndView admin_total_board() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin_total_board");
		return mv;
	}
}
