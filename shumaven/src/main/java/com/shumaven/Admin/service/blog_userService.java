package com.shumaven.Admin.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.shumaven.Admin.pojo.blog_user;

public interface blog_userService {
	//获得所有用户
	int getBlog_User(String userid,String userpassword,HttpSession session,HttpServletRequest request);
	//修改
	void updateUser(blog_user mbBlog_user);
	//查找
	blog_user getUser(String userId);
	//查找获取所有用户
	List<blog_user> getUsers(HttpSession session);
}
