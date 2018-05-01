package com.shumaven.Admin.service;

import com.shumaven.Admin.pojo.blog_userdetail;

public interface blog_userdetailService {
	blog_userdetail getUserdetail(String userId);
	int updateDetail (blog_userdetail mbBlog_userdetail);
}
