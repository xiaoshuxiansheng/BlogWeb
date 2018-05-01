package com.shumaven.Admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shumaven.Admin.pojo.blog_user;


@Controller
@RequestMapping("admin")
public class SiteController {
	@RequestMapping("site")
	public String site(HttpServletRequest request) {
		blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
		if (user==null) {
			blog_user guest=new blog_user();
			guest.setUserName("未登录 ");
			request.getSession().setAttribute("blog_user", guest);
		}
		return "site";
	}
	
}
