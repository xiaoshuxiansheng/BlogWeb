package com.shumaven.Admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shumaven.Admin.pojo.blog_user;
import com.shumaven.Admin.service.blog_infoService;
import com.shumaven.Admin.service.blog_userService;

@Controller
@RequestMapping(value="/admin")
public class LoginController {
	//定义当前版本号
	final String nowVersion="1.02";
	@Autowired
	blog_infoService blog_infoService;
	@Autowired 
	blog_userService blog_userService;
	static Logger logger = Logger.getLogger(LoginController.class);
	//构造方法
	public LoginController() {
		
	}
	
	//登录页面，并且实现session检车是否已经登录
	@RequestMapping("login")
	public String Welconme(HttpServletRequest request,HttpSession session) {
		blog_user user=(blog_user)request.getSession().getAttribute("blog_user");
		if (user!=null) {
			return "index";
		}
		return "login";
	}
	
	//登录检查
	@RequestMapping("checklogin")
	public String checklogin(HttpServletRequest request,HttpSession session){
		String userid=request.getParameter("userid");
		String userpassword=request.getParameter("userpassword");
		List<blog_user> users=new ArrayList<>();
		int code=blog_userService.getBlog_User(userid, userpassword,session,request);
		switch (code) {
		case 1://账号不存在
			return "login";
		case 2://密码错误
			return "login";
		case 3://管理员登录成功
		{
			blog_infoService.getNewUpdate(session);//获取最新版本信息
			blog_infoService.getNowInfo(session, nowVersion);//获取当前版本号
			users=blog_userService.getUsers(session);//获取所有users
			return "index";
		}
		case 4://用户登录成功
			return "staff";
		}
		return "login";		
	}
	//获取登录时的时间，ip等等信息
	public  void getLoginInfo() {
		 
	}
}
