package com.shumaven.Admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shumaven.Admin.pojo.blog_user;

@Controller
@RequestMapping(value="admin")
public class InviteController {
	
	@RequestMapping("invite")
	public String email(HttpServletRequest request) {
		blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
		if (user==null) {
			blog_user guest=new blog_user();
			guest.setUserName("未登录 ");
			request.getSession().setAttribute("blog_user", guest);
		}
		return "invite";
	}
	
	//add
	@RequestMapping("inviteadd")
	public String inviteadd(HttpServletRequest request) {
		blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
		if (user==null) {
			blog_user guest=new blog_user();
			guest.setUserName("未登录 ");
			request.getSession().setAttribute("blog_user", guest);
		}
		return "inviteadd";
	}
	//create
		@RequestMapping("invitecreate")
		public String invitecreate(HttpServletRequest request) {
			blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
			if (user==null) {
				blog_user guest=new blog_user();
				guest.setUserName("未登录 ");
				request.getSession().setAttribute("blog_user", guest);
			}
			return "invitecreate";
		}
}
