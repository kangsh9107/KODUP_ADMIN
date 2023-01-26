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
	
	
	@RequestMapping("jsp/admin_check_pixel")
	public void check_pixel(AdminHomeVo ahVo,HttpServletResponse resp) throws IOException {
		String pixel_id = service.pixel_id(ahVo);
		PrintWriter out = resp.getWriter();
        out.print(pixel_id);
	}
	
	@RequestMapping("jsp/admin_check_mento")
	public void check_mento(AdminHomeVo ahVo,HttpServletResponse resp) throws IOException {
		String mento_id = service.mento_id(ahVo);
		PrintWriter out = resp.getWriter();
        out.print(mento_id);
	}
	
	@RequestMapping("jsp/admin_check_corp")
	public void check_corp(AdminHomeVo ahVo,HttpServletResponse resp) throws IOException {
		String corp_id = service.corp_id(ahVo);
		PrintWriter out = resp.getWriter();
        out.print(corp_id);
	}
	
	@RequestMapping("jsp/admin_test")
	public ModelAndView test() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/test");
		return mv;
	}
}
