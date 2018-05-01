package com.shumaven.Admin.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shumaven.Admin.mapper.blog_userMapper;
import com.shumaven.Admin.pojo.blog_user;
import com.shumaven.Admin.pojo.blog_userExample;
import com.shumaven.Admin.pojo.blog_userExample.Criteria;
import com.shumaven.Admin.service.blog_userService;
import com.shumaven.Admin.service.blog_userdetailService;



@Service
public class blog_userServicelmpl implements blog_userService{

	@Autowired
	blog_userdetailService  detailService;
	@Autowired 
	blog_userMapper blog_userMapper;
	//返回1表示账号不存在，2表示密码错误，3表示用户管理员端账户密码正确 4表示普通用户端账户密码正确
	public int getBlog_User(String userid, String userpassword,HttpSession session,HttpServletRequest request) {
		blog_userExample example=new blog_userExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUserIdEqualTo(userid);
		List<blog_user> list=(List<blog_user>) blog_userMapper.selectByExample(example);
		if(list.size() >0 && list != null){
			if (list.get(0).getUserPassword().equals(userpassword)&&list.get(0).getAdmin().equals(1)) {
				SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd/-HH:mm:ss");
				String nowTime=dateFormat.format(new java.util.Date());//获取当前系统的时间
				String ip=request.getRemoteAddr();//获取用户ip
				list.get(0).setLasttime(nowTime);
				list.get(0).setIp(ip);
				blog_userMapper.updateByPrimaryKey(list.get(0));
				session.setAttribute("blog_user",list.get(0));
				return 3;
			}
			else if(list.get(0).getUserPassword().equals(userpassword)&&list.get(0).getAdmin().equals(0)) {
				SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd/-HH:mm:ss");
				String nowTime=dateFormat.format(new java.util.Date());//获取当前系统的时间
				String ip=request.getRemoteAddr();//获取用户ip
				list.get(0).setLasttime(nowTime);
				list.get(0).setIp(ip);
				blog_userMapper.updateByPrimaryKey(list.get(0));
				session.setAttribute("blog_user",list.get(0));
				request.setAttribute("userdetail", detailService.getUserdetail(userid));
				
				return 4;
			}
			else return 2;		
			
	}
		return 1;
}
	@Override
	public void updateUser(blog_user mbBlog_user) {
		blog_userMapper.updateByPrimaryKey(mbBlog_user);
		
	}
	@Override
	public blog_user getUser(String userId) {
		blog_user mbBlog_user=blog_userMapper.selectByPrimaryKey(userId);
		return mbBlog_user;
	}
	@Override
	public List<blog_user> getUsers(HttpSession session) {
		List<blog_user> users =blog_userMapper.getUsers();
		session.setAttribute("users", users);
		return users;
	}
}
