package com.kodup.admin.home;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
	
	
	@RequestMapping("jsp/admin_check_alarm")
	public void check_alarm(AdminHomeVo ahVo,HttpServletResponse resp) throws IOException {
		System.out.println("컨트롤러 연결 성공");
		String pixel_id = service.pixel_id(ahVo);
		System.out.println(pixel_id);
		PrintWriter out = resp.getWriter();
        out.print(pixel_id);
	}
	
}
