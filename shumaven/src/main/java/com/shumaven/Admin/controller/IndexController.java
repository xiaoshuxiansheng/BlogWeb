package com.shumaven.Admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shumaven.Admin.pojo.blog_user;

@Controller
@RequestMapping(value="admin")
public class IndexController {
	
	@RequestMapping("index")
	public String index(HttpServletRequest request) {
		return "index";
	}
	
}
