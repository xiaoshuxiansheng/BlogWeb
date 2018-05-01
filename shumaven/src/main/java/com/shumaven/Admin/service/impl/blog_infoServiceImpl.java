package com.shumaven.Admin.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shumaven.Admin.mapper.blog_infoMapper;
import com.shumaven.Admin.pojo.blog_info;
import com.shumaven.Admin.pojo.blog_infoExample;
import com.shumaven.Admin.pojo.blog_infoExample.Criteria;
import com.shumaven.Admin.service.blog_infoService;
@Service
public class blog_infoServiceImpl implements blog_infoService {
@Autowired
blog_infoMapper blog_infoMapper;
	@Override
	public void getNewUpdate(HttpSession session) {
		blog_info blog_Info =blog_infoMapper.getNewUpdate();
		session.setAttribute("newUpdate", blog_Info);
	}

	@Override
	public void getNowInfo(HttpSession session,String nowVesion) {
		blog_infoExample example=new blog_infoExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andVersionEqualTo(nowVesion);
		List<blog_info> list=(List<blog_info>) blog_infoMapper.selectByExample(example);
		if(list.size() >0 && list != null) {
			session.setAttribute("nowInfo", list.get(0));
		}

}
}
