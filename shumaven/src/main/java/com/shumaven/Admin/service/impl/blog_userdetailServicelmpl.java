package com.shumaven.Admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shumaven.Admin.mapper.blog_userdetailMapper;
import com.shumaven.Admin.pojo.blog_userdetail;
import com.shumaven.Admin.service.blog_userdetailService;
@Service
public class blog_userdetailServicelmpl implements blog_userdetailService{
	@Autowired
	blog_userdetailMapper userdetailMapper;
	@Override
	//返回一个user详情
	public blog_userdetail getUserdetail(String userId) {
		blog_userdetail userdetail=userdetailMapper.selectByPrimaryKey(userId);
		return userdetail;
	}
	//update
	@Override
	public int updateDetail(blog_userdetail mbBlog_userdetail) {
		return userdetailMapper.updateByPrimaryKey(mbBlog_userdetail);	
	}
	

}
