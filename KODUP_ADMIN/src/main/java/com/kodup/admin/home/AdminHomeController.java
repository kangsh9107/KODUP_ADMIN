package com.kodup.admin.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminHomeController {

	@Autowired
	AdminHomeService service;
	
	@RequestMapping("jsp/admin_home")
	public ModelAndView admin_home(AdminHomeVo ahVo) {
		ModelAndView mv = new ModelAndView();
		
		int mento_request = service.mento_request(ahVo);
		int pixel_request = service.pixel_request(ahVo);
		int corp_request = service.corp_request(ahVo);
		
		mv.addObject("mento_request",mento_request);
		mv.addObject("pixel_request",pixel_request);
		mv.addObject("corp_request",corp_request);
		mv.setViewName("jsp/admin_home");
		return mv;
	}
}
