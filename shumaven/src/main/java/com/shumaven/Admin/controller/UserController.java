package com.shumaven.Admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shumaven.Admin.pojo.blog_user;
import com.shumaven.Admin.pojo.blog_userdetail;
import com.shumaven.Admin.service.blog_userService;
import com.shumaven.Admin.service.blog_userdetailService;

@Controller
@RequestMapping(value="admin")
public class UserController {
	@Autowired
	blog_userService blog_userService;
	@Autowired
	blog_userdetailService blog_UserdetailService;
	@RequestMapping("user")
	public String email(HttpServletRequest request) {
		blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
		if (user==null) {
			blog_user guest=new blog_user();
			guest.setUserName("未登录 ");
			request.getSession().setAttribute("blog_user", guest);
		}
		return "user";
	}
	
	//
	@RequestMapping("userrecovery")
	public String userrecovery(HttpServletRequest request) {
		blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
		if (user==null) {
			blog_user guest=new blog_user();
			guest.setUserName("未登录 ");
			request.getSession().setAttribute("blog_user", guest);
		}
		return "userrecovery";
	}
	//禁用用户
	@RequestMapping("userdelete")
	public void userdelete(HttpServletRequest request){
		String userId=request.getParameter("userId");
		System.err.println("userId："+userId);
		blog_user mbBlog_user=blog_userService.getUser(userId);
		mbBlog_user.setEmail("12345");
		blog_userService.updateUser(mbBlog_user);
		
	}
	//获取用户详情
@RequestMapping("getUserdetail")

public @ResponseBody blog_userdetail getUserdetail(HttpServletRequest request) {
	String userId=request.getParameter("userId"); 
	blog_userdetail userdetail=blog_UserdetailService.getUserdetail(userId);
	return userdetail;
}
@RequestMapping("Agree")
public @ResponseBody int  Agree(HttpServletRequest request) {
	String userId=request.getParameter("userId"); 
	blog_userdetail userdetail=blog_UserdetailService.getUserdetail(userId);
	System.err.println(userId);
	userdetail.setIsagree(1);
	return blog_UserdetailService.updateDetail(userdetail);
}
@RequestMapping("Ban")
public @ResponseBody int  Ban(HttpServletRequest request) {
	String userId=request.getParameter("userId"); 
	blog_userdetail userdetail=blog_UserdetailService.getUserdetail(userId);
	System.err.println(userId);
	userdetail.setIsagree(0);
	return blog_UserdetailService.updateDetail(userdetail);
}
}
