package com.shumaven.Admin.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shumaven.Admin.pojo.blog_user;

@Controller
@RequestMapping("")
public class TestController {
@RequestMapping("test")
public String ajaxTest() {
	return "test";
}
@RequestMapping("ajax")
public@ResponseBody() blog_user ajaxtest(HttpServletRequest request){
	String userId=request.getParameter("userId");
	System.out.println(userId);
	blog_user blog_User=new blog_user();
	blog_User.setUserName("校长");
	return blog_User;
}
}
