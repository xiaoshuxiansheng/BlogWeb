package com.shumaven.Admin.service;

import javax.servlet.http.HttpSession;

import com.shumaven.Admin.pojo.blog_info;

public interface blog_infoService {
	//获取博客网站最新版本信息
	void getNewUpdate(HttpSession session);
	//获取博客网站信息
	void getNowInfo(HttpSession session,String nowVersion);
}
